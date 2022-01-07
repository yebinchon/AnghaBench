; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_check_params.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_check_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i64, i64, i64, i64, i64, i32, i32, double, double, double, double, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @_ccv_tld_check_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_tld_check_params(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = icmp sgt i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %17, 32
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i1 [ false, %1 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 24
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 24
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %27, %19
  %33 = phi i1 [ false, %19 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 24
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 24
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 1
  br label %47

47:                                               ; preds = %41, %32
  %48 = phi i1 [ false, %32 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %47
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %81, 1
  br label %83

83:                                               ; preds = %79, %47
  %84 = phi i1 [ false, %47 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 1
  br label %94

94:                                               ; preds = %90, %83
  %95 = phi i1 [ false, %83 ], [ %93, %90 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 10
  %99 = load double, double* %98, align 8
  %100 = fcmp ogt double %99, 5.000000e-01
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 10
  %103 = load double, double* %102, align 8
  %104 = fcmp olt double %103, 1.000000e+00
  br label %105

105:                                              ; preds = %101, %94
  %106 = phi i1 [ false, %94 ], [ %104, %101 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 11
  %110 = load double, double* %109, align 8
  %111 = fcmp ogt double %110, 5.000000e-01
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 11
  %114 = load double, double* %113, align 8
  %115 = fcmp olt double %114, 1.000000e+00
  br label %116

116:                                              ; preds = %112, %105
  %117 = phi i1 [ false, %105 ], [ %115, %112 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 12
  %121 = load double, double* %120, align 8
  %122 = fcmp ogt double %121, 5.000000e-01
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 12
  %125 = load double, double* %124, align 8
  %126 = fcmp olt double %125, 1.000000e+00
  br label %127

127:                                              ; preds = %123, %116
  %128 = phi i1 [ false, %116 ], [ %126, %123 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 13
  %132 = load double, double* %131, align 8
  %133 = fcmp ogt double %132, 5.000000e-01
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 13
  %136 = load double, double* %135, align 8
  %137 = fcmp olt double %136, 1.000000e+00
  br label %138

138:                                              ; preds = %134, %127
  %139 = phi i1 [ false, %127 ], [ %137, %134 ]
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 14
  %143 = load double, double* %142, align 8
  %144 = fcmp oge double %143, 5.000000e-01
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 14
  %147 = load double, double* %146, align 8
  %148 = fcmp olt double %147, 1.000000e+00
  br label %149

149:                                              ; preds = %145, %138
  %150 = phi i1 [ false, %138 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 15
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 16
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 17
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %164, 0
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 18
  %169 = load i64, i64* %168, align 8
  %170 = icmp sgt i64 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 19
  %174 = load i64, i64* %173, align 8
  %175 = icmp sgt i64 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 20
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 21
  %184 = load i64, i64* %183, align 8
  %185 = icmp sgt i64 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 22
  %189 = load i64, i64* %188, align 8
  %190 = icmp sgt i64 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 23
  %194 = load i64, i64* %193, align 8
  %195 = icmp sge i64 %194, 0
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
