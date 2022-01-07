; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_clone_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_clone_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@if_cloners_count = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@if_cloners = common dso_local global i32 0, align 4
@ifc_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @if_clone_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_clone_list(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.if_clone*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @IFNAMSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @if_cloners_count, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @USER_ADDR_NULL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %73

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %73

28:                                               ; preds = %23
  %29 = load i32, i32* @if_cloners_count, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @if_cloners_count, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %5, align 4
  %38 = call %struct.if_clone* @LIST_FIRST(i32* @if_cloners)
  store %struct.if_clone* %38, %struct.if_clone** %10, align 8
  br label %39

39:                                               ; preds = %62, %36
  %40 = load %struct.if_clone*, %struct.if_clone** %10, align 8
  %41 = icmp ne %struct.if_clone* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %71

47:                                               ; preds = %45
  %48 = trunc i64 %14 to i32
  %49 = call i32 @bzero(i8* %16, i32 %48)
  %50 = load %struct.if_clone*, %struct.if_clone** %10, align 8
  %51 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFNAMSIZ, align 4
  %54 = call i32 @strlcpy(i8* %16, i32 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @IFNAMSIZ, align 4
  %57 = call i32 @copyout(i8* %16, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %71

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.if_clone*, %struct.if_clone** %10, align 8
  %64 = load i32, i32* @ifc_list, align 4
  %65 = call %struct.if_clone* @LIST_NEXT(%struct.if_clone* %63, i32 %64)
  store %struct.if_clone* %65, %struct.if_clone** %10, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @IFNAMSIZ, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %39

71:                                               ; preds = %60, %45
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %73

73:                                               ; preds = %71, %26, %22
  %74 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.if_clone* @LIST_FIRST(i32*) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @copyout(i8*, i32, i32) #2

declare dso_local %struct.if_clone* @LIST_NEXT(%struct.if_clone*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
