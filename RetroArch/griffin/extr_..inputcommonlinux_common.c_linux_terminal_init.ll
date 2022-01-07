; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..inputcommonlinux_common.c_linux_terminal_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..inputcommonlinux_common.c_linux_terminal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64* }

@oldKbmd = common dso_local global i32 0, align 4
@oldTerm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@newTerm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ECHO = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@KDGKBMODE = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_terminal_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @oldKbmd, align 4
  %3 = icmp ne i32 %2, 65535
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %48

5:                                                ; preds = %0
  %6 = call i64 @tcgetattr(i32 0, %struct.TYPE_5__* @oldTerm)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 0, i32* %1, align 4
  br label %48

9:                                                ; preds = %5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_5__* @newTerm to i8*), i8* align 8 bitcast (%struct.TYPE_5__* @oldTerm to i8*), i64 16, i1 false)
  %10 = load i32, i32* @ECHO, align 4
  %11 = load i32, i32* @ICANON, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ISIG, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @newTerm, i32 0, i32 0), align 8
  %17 = and i32 %16, %15
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @newTerm, i32 0, i32 0), align 8
  %18 = load i32, i32* @ISTRIP, align 4
  %19 = load i32, i32* @IGNCR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ICRNL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @INLCR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IXOFF, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @IXON, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @newTerm, i32 0, i32 1), align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @newTerm, i32 0, i32 1), align 4
  %32 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @newTerm, i32 0, i32 2), align 8
  %33 = load i64, i64* @VMIN, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @newTerm, i32 0, i32 2), align 8
  %36 = load i64, i64* @VTIME, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @KDGKBMODE, align 4
  %39 = call i64 @ioctl(i32 0, i32 %38, i32* @oldKbmd)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %48

42:                                               ; preds = %9
  %43 = load i32, i32* @TCSAFLUSH, align 4
  %44 = call i64 @tcsetattr(i32 0, i32 %43, %struct.TYPE_5__* @newTerm)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %1, align 4
  br label %48

47:                                               ; preds = %42
  store i32 1, i32* %1, align 4
  br label %48

48:                                               ; preds = %47, %46, %41, %8, %4
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i64 @tcgetattr(i32, %struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i64 @tcsetattr(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
