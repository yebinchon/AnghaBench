; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_main.c_AAS_StringFromIndex.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_main.c_AAS_StringFromIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i8*, i8*, i32)* }

@aasworld = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@botimport = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: index %d not setup\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: index %d out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: reference to unused index %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AAS_StringFromIndex(i8* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 0), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = load i32 (i32, i8*, i8*, i32)*, i32 (i32, i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @botimport, i32 0, i32 0), align 8
  %14 = load i32, i32* @PRT_ERROR, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 %13(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %54

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %18
  %26 = load i32 (i32, i8*, i8*, i32)*, i32 (i32, i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @botimport, i32 0, i32 0), align 8
  %27 = load i32, i32* @PRT_ERROR, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 %26(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %28, i32 %29)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %54

31:                                               ; preds = %21
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32 (i32, i8*, i8*, i32)*, i32 (i32, i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @botimport, i32 0, i32 0), align 8
  %43 = load i32, i32* @PRT_ERROR, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 %42(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %38
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %54

48:                                               ; preds = %31
  %49 = load i8**, i8*** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %5, align 8
  br label %54

54:                                               ; preds = %48, %47, %25, %12
  %55 = load i8*, i8** %5, align 8
  ret i8* %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
