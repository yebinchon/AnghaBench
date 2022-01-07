; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos.c_GetBaseDirectory.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos.c_GetBaseDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg0 = common dso_local global i8* null, align 8
@BaseDirectory = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetBaseDirectory() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %4 = load i8*, i8** @arg0, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %41

6:                                                ; preds = %0
  %7 = load i8*, i8** @arg0, align 8
  %8 = call i32 @strlen(i8* %7)
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %37, %6
  %10 = load i32, i32* %2, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = load i8*, i8** @arg0, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 47
  br i1 %19, label %28, label %20

20:                                               ; preds = %12
  %21 = load i8*, i8** @arg0, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 92
  br i1 %27, label %28, label %36

28:                                               ; preds = %20, %12
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32* @malloc(i32 %30)
  store i32* %31, i32** %3, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i8*, i8** @arg0, align 8
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @strncpy(i32* %32, i8* %33, i32 %34)
  br label %40

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %2, align 4
  br label %9

40:                                               ; preds = %28, %9
  br label %41

41:                                               ; preds = %40, %0
  %42 = load i32*, i32** %3, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  %45 = call i32* @malloc(i32 1)
  store i32* %45, i32** %3, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i64*, i64** @BaseDirectory, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 0, i64* %50, align 8
  %51 = load i32*, i32** %1, align 8
  ret i32* %51
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
