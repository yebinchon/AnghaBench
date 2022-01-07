; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_get_isakmp_natt_trunc_len.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_get_isakmp_natt_trunc_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_packet*, i32, i32)* @get_isakmp_natt_trunc_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_isakmp_natt_trunc_len(%struct.bpf_packet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.bpf_packet* %0, %struct.bpf_packet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.bpf_packet*, %struct.bpf_packet** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @bpf_copydata(%struct.bpf_packet* %17, i32 %18, i32 %19, i8* %16)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %74

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 4
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, i8* %16, i64 0
  %30 = load i8, i8* %29, align 16
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %28
  %34 = getelementptr inbounds i8, i8* %16, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = getelementptr inbounds i8, i8* %16, i64 2
  %40 = load i8, i8* %39, align 2
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, i8* %16, i64 3
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.bpf_packet*, %struct.bpf_packet** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 4
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 4
  %54 = call i32 @get_isakmp_trunc_len(%struct.bpf_packet* %49, i32 %51, i32 %53)
  %55 = add nsw i32 4, %54
  store i32 %55, i32* %9, align 4
  br label %66

56:                                               ; preds = %43, %38, %33, %28, %25
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %9, align 4
  br label %65

60:                                               ; preds = %56
  %61 = load %struct.bpf_packet*, %struct.bpf_packet** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @get_esp_trunc_len(%struct.bpf_packet* %61, i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %60, %59
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %72, %70, %23
  %75 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bpf_copydata(%struct.bpf_packet*, i32, i32, i8*) #2

declare dso_local i32 @get_isakmp_trunc_len(%struct.bpf_packet*, i32, i32) #2

declare dso_local i32 @get_esp_trunc_len(%struct.bpf_packet*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
