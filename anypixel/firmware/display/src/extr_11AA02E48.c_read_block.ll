; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_11AA02E48.c_read_block.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_11AA02E48.c_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIN_HIGH = common dso_local global i32 0, align 4
@T_STBY = common dso_local global i32 0, align 4
@PIN_LOW = common dso_local global i32 0, align 4
@T_HDR_LOW = common dso_local global i32 0, align 4
@UNIO_START = common dso_local global i32 0, align 4
@UNIO_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_block(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @PIN_HIGH, align 4
  %10 = load i32, i32* @T_STBY, align 4
  %11 = call i32 @usleep(i32 %10)
  %12 = load i32, i32* @PIN_LOW, align 4
  %13 = load i32, i32* @T_HDR_LOW, align 4
  %14 = call i32 @usleep(i32 %13)
  %15 = load i32, i32* @UNIO_START, align 4
  %16 = call i32 @send_byte(i32 %15, i32 1)
  %17 = call i32 @send_byte(i32 160, i32 1)
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @UNIO_READ, align 4
  %21 = call i32 @send_byte(i32 %20, i32 1)
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 8
  %26 = call i32 @send_byte(i32 %25, i32 1)
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 255
  %31 = call i32 @send_byte(i32 %30, i32 1)
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %51, %3
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp ne i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @recv_byte(i32* %42, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %34

54:                                               ; preds = %34
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @send_byte(i32, i32) #1

declare dso_local i32 @recv_byte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
