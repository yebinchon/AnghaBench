; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/x86_64/extr_kdp_machdep.c_machine_trace_thread64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/x86_64/extr_kdp_machdep.c_machine_trace_thread64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@VM_MAP_NULL = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@RETURN_OFFSET64 = common dso_local global i32 0, align 4
@kThreadTruncatedBT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_trace_thread64(%struct.TYPE_12__* %0, i8* %1, i8* %2, i32 %3, i64 %4, i64 %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %17, align 8
  %29 = load i64, i64* %14, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 2, i32 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i64 0, i64* %24, align 8
  %36 = load i32, i32* @VM_MAP_NULL, align 4
  store i32 %36, i32* %25, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ugt i8* %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %8
  %41 = load i32, i32* %12, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = load i32, i32* %18, align 4
  %48 = zext i32 %47 to i64
  %49 = sdiv i64 %46, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @MIN(i32 %41, i32 %50)
  br label %53

52:                                               ; preds = %8
  br label %53

53:                                               ; preds = %52, %40
  %54 = phi i32 [ %51, %40 ], [ 0, %52 ]
  store i32 %54, i32* %12, align 4
  %55 = load i64, i64* %13, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = call %struct.TYPE_11__* @USER_REGS64(%struct.TYPE_12__* %58)
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %26, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %22, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %20, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %25, align 4
  %72 = load i32*, i32** %16, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %57
  %75 = load i64, i64* %13, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %16, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %74, %57
  br label %100

84:                                               ; preds = %53
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.TYPE_13__* @STACK_IKS(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %20, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call %struct.TYPE_13__* @STACK_IKS(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %22, align 4
  %97 = load i32, i32* %22, align 4
  %98 = call i32 @VM_KERNEL_UNSLIDE(i32 %97)
  store i32 %98, i32* %22, align 4
  %99 = load i32, i32* @kernel_map, align 4
  store i32 %99, i32* %25, align 4
  br label %100

100:                                              ; preds = %84, %83
  store i32 0, i32* %21, align 4
  br label %101

101:                                              ; preds = %182, %100
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %185

105:                                              ; preds = %101
  %106 = load i32, i32* %22, align 4
  %107 = load i32*, i32** %17, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %17, align 8
  store i32 %106, i32* %107, align 4
  %109 = load i64, i64* %14, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* %20, align 4
  %113 = load i32*, i32** %17, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %17, align 8
  store i32 %112, i32* %113, align 4
  br label %115

115:                                              ; preds = %111, %105
  %116 = load i32, i32* %20, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118, %115
  br label %185

123:                                              ; preds = %118
  %124 = load i32, i32* %20, align 4
  %125 = and i32 %124, 7
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %185

128:                                              ; preds = %123
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %23, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %185

133:                                              ; preds = %128
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* @RETURN_OFFSET64, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %25, align 4
  %138 = load i32*, i32** %15, align 8
  %139 = call i64 @machine_trace_thread_get_kva(i32 %136, i32 %137, i32* %138)
  store i64 %139, i64* %24, align 8
  %140 = load i64, i64* %24, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %133
  %143 = load i32*, i32** %15, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32, i32* @kThreadTruncatedBT, align 4
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %145, %142
  br label %185

151:                                              ; preds = %133
  %152 = load i64, i64* %24, align 8
  %153 = inttoptr i64 %152 to i32*
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %22, align 4
  %155 = load i64, i64* %13, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %151
  %158 = load i32, i32* %22, align 4
  %159 = call i32 @VM_KERNEL_UNSLIDE(i32 %158)
  store i32 %159, i32* %22, align 4
  br label %160

160:                                              ; preds = %157, %151
  %161 = load i32, i32* %20, align 4
  store i32 %161, i32* %23, align 4
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %25, align 4
  %164 = load i32*, i32** %15, align 8
  %165 = call i64 @machine_trace_thread_get_kva(i32 %162, i32 %163, i32* %164)
  store i64 %165, i64* %24, align 8
  %166 = load i64, i64* %24, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = load i64, i64* %24, align 8
  %170 = inttoptr i64 %169 to i32*
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %20, align 4
  br label %181

172:                                              ; preds = %160
  store i32 0, i32* %20, align 4
  %173 = load i32*, i32** %15, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load i32, i32* @kThreadTruncatedBT, align 4
  %177 = load i32*, i32** %15, align 8
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %176
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %175, %172
  br label %181

181:                                              ; preds = %180, %168
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %21, align 4
  br label %101

185:                                              ; preds = %150, %132, %127, %122, %101
  %186 = call i32 (...) @machine_trace_thread_clear_validation_cache()
  %187 = load i32*, i32** %17, align 8
  %188 = bitcast i32* %187 to i8*
  %189 = load i8*, i8** %10, align 8
  %190 = ptrtoint i8* %188 to i64
  %191 = ptrtoint i8* %189 to i64
  %192 = sub i64 %190, %191
  %193 = trunc i64 %192 to i32
  ret i32 %193
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_11__* @USER_REGS64(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @STACK_IKS(i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE(i32) #1

declare dso_local i64 @machine_trace_thread_get_kva(i32, i32, i32*) #1

declare dso_local i32 @machine_trace_thread_clear_validation_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
