; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm.c_VM_VmProfile_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm.c_VM_VmProfile_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { double, i32, %struct.TYPE_8__* }

@lastVM = common dso_local global %struct.TYPE_7__* null, align 8
@VM_ProfileSort = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%2i%% %9i %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"    %9.0f total\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VM_VmProfile_f() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_8__**, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lastVM, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %113

10:                                               ; preds = %0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lastVM, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %1, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %113

17:                                               ; preds = %10
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call %struct.TYPE_8__** @Z_Malloc(i32 %23)
  store %struct.TYPE_8__** %24, %struct.TYPE_8__*** %2, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %28, i64 0
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %29, align 8
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  store double %34, double* %5, align 8
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %63, %17
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %42, i64 %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 %52
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %53, align 8
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 %56
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = load double, double* %5, align 8
  %62 = fadd double %61, %60
  store double %62, double* %5, align 8
  br label %63

63:                                               ; preds = %41
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %35

66:                                               ; preds = %35
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @VM_ProfileSort, align 4
  %72 = call i32 @qsort(%struct.TYPE_8__** %67, i32 %70, i32 8, i32 %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %105, %66
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %73
  %80 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %80, i64 %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %3, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load double, double* %86, align 8
  %88 = fptrunc double %87 to float
  %89 = fmul float 1.000000e+02, %88
  %90 = fpext float %89 to double
  %91 = load double, double* %5, align 8
  %92 = fdiv double %90, %91
  %93 = fptosi double %92 to i32
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = sitofp i32 %94 to double
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, double, ...) @Com_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double %95, double %98, i32 %101)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store double 0.000000e+00, double* %104, align 8
  br label %105

105:                                              ; preds = %79
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %73

108:                                              ; preds = %73
  %109 = load double, double* %5, align 8
  %110 = call i32 (i8*, double, ...) @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), double %109)
  %111 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %112 = call i32 @Z_Free(%struct.TYPE_8__** %111)
  br label %113

113:                                              ; preds = %108, %16, %9
  ret void
}

declare dso_local %struct.TYPE_8__** @Z_Malloc(i32) #1

declare dso_local i32 @qsort(%struct.TYPE_8__**, i32, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, double, ...) #1

declare dso_local i32 @Z_Free(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
