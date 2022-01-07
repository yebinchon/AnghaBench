; ModuleID = '/home/carl/AnghaBench/ccv/serve/extr_parsers.c_param_parser_terminate.c'
source_filename = "/home/carl/AnghaBench/ccv/serve/extr_parsers.c_param_parser_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_13__, i32, %struct.TYPE_12__, %struct.TYPE_11__, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { double }
%struct.TYPE_15__ = type { i32, i32 (i32, i32)*, i32 (i32, i32)*, i64 }

@s_param_start = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @param_parser_terminate(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %186

8:                                                ; preds = %1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 10
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i64 %14
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %3, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %185 [
    i32 131, label %19
    i32 132, label %34
    i32 133, label %61
    i32 134, label %75
    i32 135, label %88
    i32 129, label %101
    i32 130, label %125
    i32 128, label %149
    i32 137, label %167
    i32 136, label %167
  ]

19:                                               ; preds = %8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = fadd double %23, 5.000000e-01
  %25 = fptosi double %24 to i32
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = inttoptr i64 %32 to i32*
  store i32 %25, i32* %33, align 4
  br label %185

34:                                               ; preds = %8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %34
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = fadd double %49, 5.000000e-01
  %51 = fptosi double %50 to i32
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = inttoptr i64 %58 to i32*
  store i32 %51, i32* %59, align 4
  br label %60

60:                                               ; preds = %45, %34
  br label %185

61:                                               ; preds = %8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 9
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = fptrunc double %65 to float
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = inttoptr i64 %73 to float*
  store float %66, float* %74, align 4
  br label %185

75:                                               ; preds = %8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 9
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = inttoptr i64 %86 to double*
  store double %79, double* %87, align 8
  br label %185

88:                                               ; preds = %8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = inttoptr i64 %99 to i32*
  store i32 %92, i32* %100, align 4
  br label %185

101:                                              ; preds = %8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sitofp i32 %105 to double
  %107 = fadd double %106, 5.000000e-01
  %108 = fptosi double %107 to i32
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sitofp i32 %112 to double
  %114 = fadd double %113, 5.000000e-01
  %115 = fptosi double %114 to i32
  %116 = call i32 @ccv_size(i32 %108, i32 %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = inttoptr i64 %123 to i32*
  store i32 %116, i32* %124, align 4
  br label %185

125:                                              ; preds = %8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sitofp i32 %129 to double
  %131 = fadd double %130, 5.000000e-01
  %132 = fptosi double %131 to i32
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sitofp i32 %136 to double
  %138 = fadd double %137, 5.000000e-01
  %139 = fptosi double %138 to i32
  %140 = call i32 @ccv_point(i32 %132, i32 %139)
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = inttoptr i64 %147 to i32*
  store i32 %140, i32* %148, align 4
  br label %185

149:                                              ; preds = %8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  %152 = load i32 (i32, i32)*, i32 (i32, i32)** %151, align 8
  %153 = icmp ne i32 (i32, i32)* %152, null
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load i32 (i32, i32)*, i32 (i32, i32)** %156, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 %157(i32 %160, i32 %164)
  br label %166

166:                                              ; preds = %154, %149
  br label %185

167:                                              ; preds = %8, %8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load i32 (i32, i32)*, i32 (i32, i32)** %169, align 8
  %171 = icmp ne i32 (i32, i32)* %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i32 (i32, i32)*, i32 (i32, i32)** %174, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 %175(i32 %178, i32 %182)
  br label %184

184:                                              ; preds = %172, %167
  br label %185

185:                                              ; preds = %8, %184, %166, %125, %101, %88, %75, %61, %60, %19
  br label %186

186:                                              ; preds = %185, %1
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @s_param_start, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %186
  %193 = load i64, i64* @s_param_start, align 8
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  store i64 %193, i64* %195, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @memset(i32 %198, i32 0, i32 4)
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %192, %186
  ret void
}

declare dso_local i32 @ccv_size(i32, i32) #1

declare dso_local i32 @ccv_point(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
