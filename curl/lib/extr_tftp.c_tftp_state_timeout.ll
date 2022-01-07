; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_state_timeout.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_state_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32 }

@TFTP_EVENT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"timeout: %ld > %ld\0A\00", align 1
@TFTP_ERR_TIMEOUT = common dso_local global i32 0, align 4
@TFTP_STATE_FIN = common dso_local global i32 0, align 4
@TFTP_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @tftp_state_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tftp_state_timeout(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @TFTP_EVENT_NONE, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = call i32 @time(i64* %6)
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %27 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @infof(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32)
  %34 = call i32 @DEBUGF(i32 %33)
  %35 = load i32, i32* @TFTP_ERR_TIMEOUT, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @TFTP_STATE_FIN, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  store i64 0, i64* %3, align 8
  br label %67

41:                                               ; preds = %18
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = icmp sgt i64 %42, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @TFTP_EVENT_TIMEOUT, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = call i32 @time(i64* %59)
  br label %61

61:                                               ; preds = %57, %41
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = sub nsw i64 %64, %65
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %61, %25
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
