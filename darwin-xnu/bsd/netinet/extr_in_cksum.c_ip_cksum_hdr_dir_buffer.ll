; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_cksum.c_ip_cksum_hdr_dir_buffer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_cksum.c_ip_cksum_hdr_dir_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ip = type { i32 }

@ipstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_cksum_hdr_dir_buffer(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.ip*
  store %struct.ip* %12, %struct.ip** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipstat, i32 0, i32 3), align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipstat, i32 0, i32 3), align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipstat, i32 0, i32 0), align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipstat, i32 0, i32 0), align 4
  br label %27

21:                                               ; preds = %4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipstat, i32 0, i32 2), align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipstat, i32 0, i32 2), align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipstat, i32 0, i32 1), align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipstat, i32 0, i32 1), align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp uge i64 %33, 4
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.ip*, %struct.ip** %10, align 8
  %37 = call i64 @IP_HDR_ALIGNED_P(%struct.ip* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.ip*, %struct.ip** %10, align 8
  %41 = call i32 @in_cksum_hdr(%struct.ip* %40)
  store i32 %41, i32* %5, align 4
  br label %46

42:                                               ; preds = %35, %31, %27
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @inet_cksum_buffer(i8* %43, i32 0, i32 0, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @IP_HDR_ALIGNED_P(%struct.ip*) #1

declare dso_local i32 @in_cksum_hdr(%struct.ip*) #1

declare dso_local i32 @inet_cksum_buffer(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
