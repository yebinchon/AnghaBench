; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/hamcorebuilder/extr_hamcorebuilder.c_main.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/hamcorebuilder/extr_hamcorebuilder.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"hamcore.se2 Build Utility\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Copyright (c) SoftEther VPN Project. All Rights Reserved.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Usage: hamcorebuilder <src_dir> <dest_hamcore_filename>\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Src Dir: '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Dest Filename: '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\0AProcessing...\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0ADone.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (...) @MayaquaMinimalMode()
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @InitMayaqua(i32 0, i32 0, i32 %9, i8** %10)
  %12 = call i32 (...) @InitCedar()
  %13 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %35

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  %30 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @BuildHamcore(i8* %31, i8* %32, i32 1)
  %34 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %35

35:                                               ; preds = %19, %17
  %36 = call i32 (...) @FreeCedar()
  %37 = call i32 (...) @FreeMayaqua()
  ret i32 0
}

declare dso_local i32 @MayaquaMinimalMode(...) #1

declare dso_local i32 @InitMayaqua(i32, i32, i32, i8**) #1

declare dso_local i32 @InitCedar(...) #1

declare dso_local i32 @Print(i8*, ...) #1

declare dso_local i32 @BuildHamcore(i8*, i8*, i32) #1

declare dso_local i32 @FreeCedar(...) #1

declare dso_local i32 @FreeMayaqua(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
