; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_backtrace.c_backtrace_thread_user.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_backtrace.c_backtrace_thread_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_saved_state = type { i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.anon.0 = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @backtrace_thread_user(i8* %0, i64* %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.arm_saved_state*, align 8
  %22 = alloca %union.anon, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %24 = load i64*, i64** %8, align 8
  %25 = icmp ne i64* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* %9, align 8
  %29 = icmp sgt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i64*, i64** %10, align 8
  %33 = icmp ne i64* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i8*, i8** %7, align 8
  %41 = call %struct.arm_saved_state* @get_user_regs(i8* %40)
  store %struct.arm_saved_state* %41, %struct.arm_saved_state** %21, align 8
  %42 = load %struct.arm_saved_state*, %struct.arm_saved_state** %21, align 8
  %43 = icmp ne %struct.arm_saved_state* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %5
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %6, align 4
  br label %200

46:                                               ; preds = %5
  %47 = load %struct.arm_saved_state*, %struct.arm_saved_state** %21, align 8
  %48 = call i32 @is_saved_state64(%struct.arm_saved_state* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.arm_saved_state*, %struct.arm_saved_state** %21, align 8
  %53 = call %struct.TYPE_5__* @saved_state64(%struct.arm_saved_state* %52)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %13, align 8
  %57 = load %struct.arm_saved_state*, %struct.arm_saved_state** %21, align 8
  %58 = call %struct.TYPE_5__* @saved_state64(%struct.arm_saved_state* %57)
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %14, align 8
  br label %70

61:                                               ; preds = %46
  %62 = load %struct.arm_saved_state*, %struct.arm_saved_state** %21, align 8
  %63 = call %struct.TYPE_6__* @saved_state32(%struct.arm_saved_state* %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %13, align 8
  %66 = load %struct.arm_saved_state*, %struct.arm_saved_state** %21, align 8
  %67 = call %struct.TYPE_6__* @saved_state32(%struct.arm_saved_state* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %61, %51
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %186

74:                                               ; preds = %70
  %75 = load i64, i64* %13, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = load i64, i64* %18, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %18, align 8
  %79 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64 %75, i64* %79, align 8
  %80 = load i64, i64* %18, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %186

84:                                               ; preds = %74
  %85 = load i64, i64* %14, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %14, align 8
  %89 = call i32 (i64, ...) bitcast (i32 (...)* @IS_USERADDR64_CANONICAL to i32 (i64, ...)*)(i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87, %84
  br label %186

92:                                               ; preds = %87
  %93 = call i64 (...) @ml_get_interrupts_enabled()
  %94 = load i64, i64* @TRUE, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = call i64 (...) @ml_get_interrupts_enabled()
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %6, align 4
  br label %200

102:                                              ; preds = %92
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i64 8, i64 8
  %107 = mul i64 2, %106
  store i64 %107, i64* %20, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i8* (...) @current_thread()
  %110 = icmp ne i8* %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %102
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @get_threadtask(i8* %112)
  %114 = call i32* @get_task_map_reference(i32 %113)
  store i32* %114, i32** %16, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* @EINVAL, align 4
  store i32 %118, i32* %6, align 4
  br label %200

119:                                              ; preds = %111
  %120 = load i32*, i32** %16, align 8
  %121 = call i32* @vm_map_switch(i32* %120)
  store i32* %121, i32** %17, align 8
  br label %123

122:                                              ; preds = %102
  store i32* null, i32** %16, align 8
  br label %123

123:                                              ; preds = %122, %119
  br label %124

124:                                              ; preds = %183, %123
  %125 = load i64, i64* %14, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i64, i64* %18, align 8
  %129 = load i64, i64* %9, align 8
  %130 = icmp slt i64 %128, %129
  br label %131

131:                                              ; preds = %127, %124
  %132 = phi i1 [ false, %124 ], [ %130, %127 ]
  br i1 %132, label %133, label %185

133:                                              ; preds = %131
  %134 = load i64, i64* %14, align 8
  %135 = bitcast %union.anon* %22 to i8*
  %136 = load i64, i64* %20, align 8
  %137 = call i32 @copyin(i64 %134, i8* %135, i64 %136)
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %186

141:                                              ; preds = %133
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = bitcast %union.anon* %22 to %struct.anon*
  %146 = getelementptr inbounds %struct.anon, %struct.anon* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  br label %152

148:                                              ; preds = %141
  %149 = bitcast %union.anon* %22 to %struct.anon.0*
  %150 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  br label %152

152:                                              ; preds = %148, %144
  %153 = phi i64 [ %147, %144 ], [ %151, %148 ]
  store i64 %153, i64* %15, align 8
  %154 = load i64, i64* %15, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load i64, i64* %15, align 8
  %158 = call i32 (i64, ...) bitcast (i32 (...)* @IS_USERADDR64_CANONICAL to i32 (i64, ...)*)(i64 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %156, %152
  br label %185

161:                                              ; preds = %156
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = bitcast %union.anon* %22 to %struct.anon*
  %166 = getelementptr inbounds %struct.anon, %struct.anon* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  br label %172

168:                                              ; preds = %161
  %169 = bitcast %union.anon* %22 to %struct.anon.0*
  %170 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  br label %172

172:                                              ; preds = %168, %164
  %173 = phi i64 [ %167, %164 ], [ %171, %168 ]
  store i64 %173, i64* %23, align 8
  %174 = load i64, i64* %23, align 8
  %175 = load i64*, i64** %8, align 8
  %176 = load i64, i64* %18, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %18, align 8
  %178 = getelementptr inbounds i64, i64* %175, i64 %176
  store i64 %174, i64* %178, align 8
  %179 = load i64, i64* %15, align 8
  %180 = load i64, i64* %14, align 8
  %181 = icmp ule i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  br label %185

183:                                              ; preds = %172
  %184 = load i64, i64* %15, align 8
  store i64 %184, i64* %14, align 8
  br label %124

185:                                              ; preds = %182, %160, %131
  br label %186

186:                                              ; preds = %185, %140, %91, %83, %73
  %187 = load i32*, i32** %16, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load i32*, i32** %17, align 8
  %191 = call i32* @vm_map_switch(i32* %190)
  %192 = load i32*, i32** %16, align 8
  %193 = call i32 @vm_map_deallocate(i32* %192)
  br label %194

194:                                              ; preds = %189, %186
  %195 = load i32, i32* %12, align 4
  %196 = load i32*, i32** %11, align 8
  store i32 %195, i32* %196, align 4
  %197 = load i64, i64* %18, align 8
  %198 = load i64*, i64** %10, align 8
  store i64 %197, i64* %198, align 8
  %199 = load i32, i32* %19, align 4
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %194, %117, %100, %44
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.arm_saved_state* @get_user_regs(i8*) #1

declare dso_local i32 @is_saved_state64(%struct.arm_saved_state*) #1

declare dso_local %struct.TYPE_5__* @saved_state64(%struct.arm_saved_state*) #1

declare dso_local %struct.TYPE_6__* @saved_state32(%struct.arm_saved_state*) #1

declare dso_local i32 @IS_USERADDR64_CANONICAL(...) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i8* @current_thread(...) #1

declare dso_local i32* @get_task_map_reference(i32) #1

declare dso_local i32 @get_threadtask(i8*) #1

declare dso_local i32* @vm_map_switch(i32*) #1

declare dso_local i32 @copyin(i64, i8*, i64) #1

declare dso_local i32 @vm_map_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
