; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_if_mcasts_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_if_mcasts_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@SIOCADDMULTI = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"%s: %s %d suspended link-layer multicast membership(s) (err=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"successfully restored\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"failed to restore\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @if_mcasts_update(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = load i32, i32* @SIOCADDMULTI, align 4
  %6 = call i64 @ifnet_ioctl(%struct.ifnet* %4, i32 0, i32 %5, i32* null)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @EAFNOSUPPORT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %10, %1
  %12 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %13 = call i8* @if_name(%struct.ifnet* %12)
  %14 = load i64, i64* %3, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)
  %18 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %17, i32 %20, i64 %21)
  ret i64 0
}

declare dso_local i64 @ifnet_ioctl(%struct.ifnet*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i64) #1

declare dso_local i8* @if_name(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
