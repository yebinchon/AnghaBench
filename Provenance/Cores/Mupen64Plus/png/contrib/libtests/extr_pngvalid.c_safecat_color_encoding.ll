; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_safecat_color_encoding.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_safecat_color_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { double, double, double }
%struct.TYPE_7__ = type { double, double, double }
%struct.TYPE_6__ = type { double, double, double }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"R(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"),G(\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"),B(\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, %struct.TYPE_9__*, double)* @safecat_color_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safecat_color_encoding(i8* %0, i64 %1, i64 %2, %struct.TYPE_9__* %3, double %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store double %4, double* %10, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %142

13:                                               ; preds = %5
  %14 = load double, double* %10, align 8
  %15 = fcmp une double %14, 0.000000e+00
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @safecat(i8* %17, i64 %18, i64 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @safecat(i8* %22, i64 %23, i64 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %25, i64* %8, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load double, double* %31, align 8
  %33 = call i64 @safecatd(i8* %26, i64 %27, i64 %28, double %32, i32 4)
  store i64 %33, i64* %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @safecat(i8* %34, i64 %35, i64 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %37, i64* %8, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = call i64 @safecatd(i8* %38, i64 %39, i64 %40, double %44, i32 4)
  store i64 %45, i64* %8, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @safecat(i8* %46, i64 %47, i64 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %49, i64* %8, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load double, double* %55, align 8
  %57 = call i64 @safecatd(i8* %50, i64 %51, i64 %52, double %56, i32 4)
  store i64 %57, i64* %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @safecat(i8* %58, i64 %59, i64 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i64 %61, i64* %8, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load double, double* %67, align 8
  %69 = call i64 @safecatd(i8* %62, i64 %63, i64 %64, double %68, i32 4)
  store i64 %69, i64* %8, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i64 @safecat(i8* %70, i64 %71, i64 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %73, i64* %8, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load double, double* %79, align 8
  %81 = call i64 @safecatd(i8* %74, i64 %75, i64 %76, double %80, i32 4)
  store i64 %81, i64* %8, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i64 @safecat(i8* %82, i64 %83, i64 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %85, i64* %8, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load double, double* %91, align 8
  %93 = call i64 @safecatd(i8* %86, i64 %87, i64 %88, double %92, i32 4)
  store i64 %93, i64* %8, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i64 @safecat(i8* %94, i64 %95, i64 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i64 %97, i64* %8, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = call i64 @safecatd(i8* %98, i64 %99, i64 %100, double %104, i32 4)
  store i64 %105, i64* %8, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i64 @safecat(i8* %106, i64 %107, i64 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %109, i64* %8, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load double, double* %115, align 8
  %117 = call i64 @safecatd(i8* %110, i64 %111, i64 %112, double %116, i32 4)
  store i64 %117, i64* %8, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i64 @safecat(i8* %118, i64 %119, i64 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %121, i64* %8, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load double, double* %127, align 8
  %129 = call i64 @safecatd(i8* %122, i64 %123, i64 %124, double %128, i32 4)
  store i64 %129, i64* %8, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* %8, align 8
  %133 = call i64 @safecat(i8* %130, i64 %131, i64 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i64 %133, i64* %8, align 8
  %134 = load double, double* %10, align 8
  %135 = fcmp une double %134, 0.000000e+00
  br i1 %135, label %136, label %141

136:                                              ; preds = %21
  %137 = load i8*, i8** %6, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %8, align 8
  %140 = call i64 @safecat(i8* %137, i64 %138, i64 %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i64 %140, i64* %8, align 8
  br label %141

141:                                              ; preds = %136, %21
  br label %142

142:                                              ; preds = %141, %5
  %143 = load double, double* %10, align 8
  %144 = fcmp une double %143, 0.000000e+00
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i8*, i8** %6, align 8
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* %8, align 8
  %149 = call i64 @safecat(i8* %146, i64 %147, i64 %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i64 %149, i64* %8, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = load i64, i64* %7, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load double, double* %10, align 8
  %154 = call i64 @safecatd(i8* %150, i64 %151, i64 %152, double %153, i32 5)
  store i64 %154, i64* %8, align 8
  br label %155

155:                                              ; preds = %145, %142
  %156 = load i64, i64* %8, align 8
  ret i64 %156
}

declare dso_local i64 @safecat(i8*, i64, i64, i8*) #1

declare dso_local i64 @safecatd(i8*, i64, i64, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
