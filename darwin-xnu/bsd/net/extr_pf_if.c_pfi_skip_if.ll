; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_skip_if.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_skip_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfi_kif = type { i8* }

@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfi_skip_if(i8* %0, %struct.pfi_kif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pfi_kif*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pfi_kif* %1, %struct.pfi_kif** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %83

14:                                               ; preds = %9
  %15 = load %struct.pfi_kif*, %struct.pfi_kif** %5, align 8
  %16 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i8* %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %83

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IFNAMSIZ, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %22
  store i32 1, i32* %3, align 4
  br label %83

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sge i32 %39, 48
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 %48, 57
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %83

51:                                               ; preds = %41, %32
  %52 = load %struct.pfi_kif*, %struct.pfi_kif** %5, align 8
  %53 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @strncmp(i8* %54, i8* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %83

60:                                               ; preds = %51
  %61 = load %struct.pfi_kif*, %struct.pfi_kif** %5, align 8
  %62 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp slt i32 %68, 48
  br i1 %69, label %80, label %70

70:                                               ; preds = %60
  %71 = load %struct.pfi_kif*, %struct.pfi_kif** %5, align 8
  %72 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sgt i32 %78, 57
  br label %80

80:                                               ; preds = %70, %60
  %81 = phi i1 [ true, %60 ], [ %79, %70 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %59, %50, %31, %21, %13
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
