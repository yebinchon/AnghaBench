; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_set_drvspec.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_set_drvspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_fake_request = type { i8*, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FAKE_ETHER_NAME = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @feth_set_drvspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feth_set_drvspec(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.if_fake_request, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %85 [
    i32 128, label %13
    i32 129, label %63
    i32 130, label %73
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @if_fake_request_copyin(i32 %14, %struct.if_fake_request* %10, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %87

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.if_fake_request, %struct.if_fake_request* %10, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @feth_config(i32* %28, i32* null)
  store i32 %29, i32* %9, align 4
  br label %87

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.if_fake_request, %struct.if_fake_request* %10, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @IFNAMSIZ, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.if_fake_request, %struct.if_fake_request* %10, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32* @ifunit(i8* %38)
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %9, align 4
  br label %87

44:                                               ; preds = %30
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @ifnet_type(i32* %45)
  %47 = load i32, i32* @IFT_ETHER, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %9, align 4
  br label %87

51:                                               ; preds = %44
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @ifnet_name(i32* %52)
  %54 = load i32, i32* @FAKE_ETHER_NAME, align 4
  %55 = call i32 @strcmp(i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %9, align 4
  br label %87

59:                                               ; preds = %51
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @feth_config(i32* %60, i32* %61)
  store i32 %62, i32* %9, align 4
  br label %87

63:                                               ; preds = %4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @if_fake_request_copyin(i32 %64, %struct.if_fake_request* %10, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %87

70:                                               ; preds = %63
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @feth_set_media(i32* %71, %struct.if_fake_request* %10)
  store i32 %72, i32* %9, align 4
  br label %87

73:                                               ; preds = %4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @if_fake_request_copyin(i32 %74, %struct.if_fake_request* %10, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %87

80:                                               ; preds = %73
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds %struct.if_fake_request, %struct.if_fake_request* %10, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @feth_enable_dequeue_stall(i32* %81, i32 %83)
  store i32 %84, i32* %9, align 4
  br label %87

85:                                               ; preds = %4
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %85, %80, %79, %70, %69, %59, %57, %49, %42, %27, %19
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i32 @if_fake_request_copyin(i32, %struct.if_fake_request*, i32) #1

declare dso_local i32 @feth_config(i32*, i32*) #1

declare dso_local i32* @ifunit(i8*) #1

declare dso_local i32 @ifnet_type(i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @ifnet_name(i32*) #1

declare dso_local i32 @feth_set_media(i32*, %struct.if_fake_request*) #1

declare dso_local i32 @feth_enable_dequeue_stall(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
