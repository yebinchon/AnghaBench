; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp_serial.c_kdp_serialize_packet.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp_serial.c_kdp_serialize_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKDP_START_CHAR = common dso_local global i8 0, align 1
@SKDP_END_CHAR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdp_serialize_packet(i8* %0, i32 %1, void (i8)* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (i8)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (i8)* %2, void (i8)** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @z_crc32(i32 0, i8* %10, i32 %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load void (i8)*, void (i8)** %6, align 8
  %15 = load i8, i8* @SKDP_START_CHAR, align 1
  call void %14(i8 signext %15)
  %16 = load i32, i32* %9, align 4
  %17 = ashr i32 %16, 0
  %18 = trunc i32 %17 to i8
  %19 = load void (i8)*, void (i8)** %6, align 8
  %20 = call i32 @kdp_serial_out(i8 zeroext %18, void (i8)* %19)
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 8
  %23 = trunc i32 %22 to i8
  %24 = load void (i8)*, void (i8)** %6, align 8
  %25 = call i32 @kdp_serial_out(i8 zeroext %23, void (i8)* %24)
  %26 = load i32, i32* %9, align 4
  %27 = ashr i32 %26, 16
  %28 = trunc i32 %27 to i8
  %29 = load void (i8)*, void (i8)** %6, align 8
  %30 = call i32 @kdp_serial_out(i8 zeroext %28, void (i8)* %29)
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 24
  %33 = trunc i32 %32 to i8
  %34 = load void (i8)*, void (i8)** %6, align 8
  %35 = call i32 @kdp_serial_out(i8 zeroext %33, void (i8)* %34)
  %36 = load void (i8)*, void (i8)** %6, align 8
  %37 = load i8, i8* @SKDP_START_CHAR, align 1
  call void %36(i8 signext %37)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %49, %3
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  %45 = load i8, i8* %43, align 1
  store i8 %45, i8* %8, align 1
  %46 = load i8, i8* %8, align 1
  %47 = load void (i8)*, void (i8)** %6, align 8
  %48 = call i32 @kdp_serial_out(i8 zeroext %46, void (i8)* %47)
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %38

52:                                               ; preds = %38
  %53 = load void (i8)*, void (i8)** %6, align 8
  %54 = load i8, i8* @SKDP_END_CHAR, align 1
  call void %53(i8 signext %54)
  ret void
}

declare dso_local i64 @z_crc32(i32, i8*, i32) #1

declare dso_local i32 @kdp_serial_out(i8 zeroext, void (i8)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
