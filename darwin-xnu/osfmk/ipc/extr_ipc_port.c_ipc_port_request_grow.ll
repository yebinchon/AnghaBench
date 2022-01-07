; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_request_grow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_request_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }

@IPR_NULL = common dso_local global %struct.TYPE_18__* null, align 8
@ipc_table_requests = common dso_local global %struct.TYPE_16__* null, align 8
@ITS_SIZE_NONE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_port_request_grow(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = call i32 @ip_active(%struct.TYPE_17__* %15)
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %7, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IPR_NULL, align 8
  %23 = icmp eq %struct.TYPE_18__* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ipc_table_requests, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i64 0
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %6, align 8
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i64 1
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %6, align 8
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @ITS_SIZE_NONE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %32
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IPR_NULL, align 8
  %39 = icmp ne %struct.TYPE_18__* %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %41, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = call i32 @ip_unlock(%struct.TYPE_17__* %49)
  %51 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %51, i32* %3, align 4
  br label %205

52:                                               ; preds = %40, %36
  br label %53

53:                                               ; preds = %66, %52
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp slt i64 %61, %62
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i1 [ false, %53 ], [ %63, %58 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 1
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %6, align 8
  br label %53

69:                                               ; preds = %64
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = call i32 @ip_unlock(%struct.TYPE_17__* %75)
  %77 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %77, i32* %3, align 4
  br label %205

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %32
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %81 = call i32 @ip_reference(%struct.TYPE_17__* %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = call i32 @ip_unlock(%struct.TYPE_17__* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %79
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = call %struct.TYPE_18__* @it_requests_alloc(%struct.TYPE_16__* %89)
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %8, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IPR_NULL, align 8
  %92 = icmp eq %struct.TYPE_18__* %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88, %79
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = call i32 @ip_release(%struct.TYPE_17__* %94)
  %96 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %96, i32* %3, align 4
  br label %205

97:                                               ; preds = %88
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = call i32 @ip_lock(%struct.TYPE_17__* %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = call i32 @ip_active(%struct.TYPE_17__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %195

103:                                              ; preds = %97
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %108 = icmp eq %struct.TYPE_18__* %106, %107
  br i1 %108, label %109, label %195

109:                                              ; preds = %103
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IPR_NULL, align 8
  %112 = icmp eq %struct.TYPE_18__* %110, %111
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i64 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = icmp eq %struct.TYPE_16__* %117, %118
  br i1 %119, label %120, label %195

120:                                              ; preds = %113, %109
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IPR_NULL, align 8
  %123 = icmp ne %struct.TYPE_18__* %121, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %120
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  store %struct.TYPE_16__* %127, %struct.TYPE_16__** %9, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %10, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %12, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i64 1
  %136 = bitcast %struct.TYPE_18__* %135 to i8*
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i64 1
  %139 = bitcast %struct.TYPE_18__* %138 to i8*
  %140 = load i64, i64* %10, align 8
  %141 = sub nsw i64 %140, 1
  %142 = mul i64 %141, 4
  %143 = call i32 @memcpy(i8* %136, i8* %139, i64 %142)
  br label %145

144:                                              ; preds = %120
  store i64 1, i64* %10, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  store i64 0, i64* %12, align 8
  br label %145

145:                                              ; preds = %144, %124
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %11, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* %10, align 8
  %151 = icmp sgt i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load i64, i64* %10, align 8
  store i64 %154, i64* %13, align 8
  br label %155

155:                                              ; preds = %170, %145
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* %11, align 8
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %155
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %161 = load i64, i64* %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i64 %161
  store %struct.TYPE_18__* %162, %struct.TYPE_18__** %14, align 8
  %163 = load i32, i32* @MACH_PORT_NULL, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load i64, i64* %12, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load i64, i64* %13, align 8
  store i64 %169, i64* %12, align 8
  br label %170

170:                                              ; preds = %159
  %171 = load i64, i64* %13, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %13, align 8
  br label %155

173:                                              ; preds = %155
  %174 = load i64, i64* %12, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 1
  store %struct.TYPE_16__* %177, %struct.TYPE_16__** %179, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  store %struct.TYPE_18__* %180, %struct.TYPE_18__** %182, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %184 = call i32 @ip_unlock(%struct.TYPE_17__* %183)
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %186 = call i32 @ip_release(%struct.TYPE_17__* %185)
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** @IPR_NULL, align 8
  %189 = icmp ne %struct.TYPE_18__* %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %173
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %193 = call i32 @it_requests_free(%struct.TYPE_16__* %191, %struct.TYPE_18__* %192)
  br label %194

194:                                              ; preds = %190, %173
  br label %203

195:                                              ; preds = %113, %103, %97
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %197 = call i32 @ip_unlock(%struct.TYPE_17__* %196)
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %199 = call i32 @ip_release(%struct.TYPE_17__* %198)
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %202 = call i32 @it_requests_free(%struct.TYPE_16__* %200, %struct.TYPE_18__* %201)
  br label %203

203:                                              ; preds = %195, %194
  %204 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %203, %93, %74, %48
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ip_active(%struct.TYPE_17__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_17__*) #1

declare dso_local i32 @ip_reference(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @it_requests_alloc(%struct.TYPE_16__*) #1

declare dso_local i32 @ip_release(%struct.TYPE_17__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_17__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @it_requests_free(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
