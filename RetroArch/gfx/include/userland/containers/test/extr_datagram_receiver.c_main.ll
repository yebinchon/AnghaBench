; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_datagram_receiver.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_datagram_receiver.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Usage:\0A%s <port>\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"vc_container_net_open failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failure allocating buffer\0A\00", align 1
@VC_CONTAINER_NET_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"vc_container_net_read failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 1, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32* @vc_container_net_open(i32* null, i8* %22, i32 0, i32* %7)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 2, i32* %3, align 4
  br label %73

29:                                               ; preds = %19
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @vc_container_net_maximum_datagram_size(i32* %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @malloc(i64 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @vc_container_net_close(i32* %38)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 3, i32* %3, align 4
  br label %73

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @vc_container_net_read(i32* %43, i8* %44, i64 %45)
  store i64 %46, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %11, align 8
  br label %50

50:                                               ; preds = %54, %48
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %10, align 8
  %53 = icmp ne i64 %51, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %11, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  %59 = call i32 @putchar(i32 %58)
  br label %50

60:                                               ; preds = %50
  br label %42

61:                                               ; preds = %42
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @vc_container_net_status(i32* %62)
  %64 = load i32, i32* @VC_CONTAINER_NET_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @vc_container_net_status(i32* %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @vc_container_net_close(i32* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %37, %26, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @vc_container_net_open(i32*, i8*, i32, i32*) #1

declare dso_local i64 @vc_container_net_maximum_datagram_size(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @vc_container_net_close(i32*) #1

declare dso_local i64 @vc_container_net_read(i32*, i8*, i64) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @vc_container_net_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
