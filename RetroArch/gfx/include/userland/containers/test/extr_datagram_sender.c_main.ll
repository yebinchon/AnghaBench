; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_datagram_sender.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_datagram_sender.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Usage:\0A%s <address> <port>\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"vc_container_net_open failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failure allocating buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Don't enter more than %d characters in one line!\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"vc_container_net_write failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 1, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i32* @vc_container_net_open(i8* %20, i8* %23, i32 0, i32* %7)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 2, i32* %3, align 4
  br label %67

30:                                               ; preds = %17
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @vc_container_net_maximum_datagram_size(i32* %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @malloc(i64 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @vc_container_net_close(i32* %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 3, i32* %3, align 4
  br label %67

42:                                               ; preds = %30
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %63, %42
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* @stdin, align 4
  %50 = call i64 @fgets(i8* %47, i64 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = call i32 @vc_container_net_write(i32* %53, i8* %54, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %52
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @vc_container_net_status(i32* %60)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  br label %64

63:                                               ; preds = %52
  br label %46

64:                                               ; preds = %59, %46
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @vc_container_net_close(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %38, %27, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @vc_container_net_open(i8*, i8*, i32, i32*) #1

declare dso_local i64 @vc_container_net_maximum_datagram_size(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @vc_container_net_close(i32*) #1

declare dso_local i64 @fgets(i8*, i64, i32) #1

declare dso_local i32 @vc_container_net_write(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vc_container_net_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
