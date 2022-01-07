; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_leakfile.c_LeakFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_leakfile.c_LeakFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__**, %struct.TYPE_6__** }

@.str = private unnamed_addr constant [18 x i8] c"--- LeakFile ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.lin\00", align 1
@source = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%5i point linefile\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LeakFile(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca double*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %146

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %22 = load i8*, i8** @source, align 8
  %23 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %30 = call i32 @Error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %19
  store i32 0, i32* %7, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %6, align 8
  br label %34

34:                                               ; preds = %104, %31
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %124

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %9, align 8
  br label %46

46:                                               ; preds = %93, %39
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %104

49:                                               ; preds = %46
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %52, i64 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = icmp eq %struct.TYPE_7__* %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %12, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %60, i64 %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %49
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %71, i64 %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %68
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %10, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %84, i64 %86
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %11, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %80, %68, %49
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %96, i64 %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %9, align 8
  br label %46

104:                                              ; preds = %46
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %6, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load double*, double** %3, align 8
  %110 = call i32 @WindingCenter(i32 %108, double* %109)
  %111 = load i32*, i32** %4, align 8
  %112 = load double*, double** %3, align 8
  %113 = getelementptr inbounds double, double* %112, i64 0
  %114 = load double, double* %113, align 8
  %115 = load double*, double** %3, align 8
  %116 = getelementptr inbounds double, double* %115, i64 1
  %117 = load double, double* %116, align 8
  %118 = load double*, double** %3, align 8
  %119 = getelementptr inbounds double, double* %118, i64 2
  %120 = load double, double* %119, align 8
  %121 = call i32 @fprintf(i32* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), double %114, double %117, double %120)
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %34

124:                                              ; preds = %34
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load double*, double** %3, align 8
  %129 = call i32 @GetVectorForKey(i32 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), double* %128)
  %130 = load i32*, i32** %4, align 8
  %131 = load double*, double** %3, align 8
  %132 = getelementptr inbounds double, double* %131, i64 0
  %133 = load double, double* %132, align 8
  %134 = load double*, double** %3, align 8
  %135 = getelementptr inbounds double, double* %134, i64 1
  %136 = load double, double* %135, align 8
  %137 = load double*, double** %3, align 8
  %138 = getelementptr inbounds double, double* %137, i64 2
  %139 = load double, double* %138, align 8
  %140 = call i32 @fprintf(i32* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), double %133, double %136, double %139)
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  %143 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @fclose(i32* %144)
  br label %146

146:                                              ; preds = %124, %18
  ret void
}

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, i8*) #1

declare dso_local i32 @WindingCenter(i32, double*) #1

declare dso_local i32 @fprintf(i32*, i8*, double, double, double) #1

declare dso_local i32 @GetVectorForKey(i32, i8*, double*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
