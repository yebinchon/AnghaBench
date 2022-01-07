; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btmemb.c_btmemb_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btmemb.c_btmemb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memb_blks = type { i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @btmemb_alloc(%struct.memb_blks* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.memb_blks*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.memb_blks* %0, %struct.memb_blks** %3, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @_CPU_ISR_Disable(i64 %8)
  %10 = load %struct.memb_blks*, %struct.memb_blks** %3, align 8
  %11 = getelementptr inbounds %struct.memb_blks, %struct.memb_blks* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %5, align 8
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %45, %1
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.memb_blks*, %struct.memb_blks** %3, align 8
  %17 = getelementptr inbounds %struct.memb_blks, %struct.memb_blks* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = bitcast i64* %29 to i8*
  store i8* %30, i8** %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @_CPU_ISR_Restore(i64 %31)
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %2, align 8
  br label %51

34:                                               ; preds = %20
  %35 = load i64*, i64** %5, align 8
  %36 = bitcast i64* %35 to i32*
  %37 = load %struct.memb_blks*, %struct.memb_blks** %3, align 8
  %38 = getelementptr inbounds %struct.memb_blks, %struct.memb_blks* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @MEM_ALIGN_SIZE(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 8
  %43 = getelementptr inbounds i32, i32* %36, i64 %42
  %44 = bitcast i32* %43 to i64*
  store i64* %44, i64** %5, align 8
  br label %45

45:                                               ; preds = %34
  %46 = load i64, i64* %4, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %4, align 8
  br label %14

48:                                               ; preds = %14
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @_CPU_ISR_Restore(i64 %49)
  store i8* null, i8** %2, align 8
  br label %51

51:                                               ; preds = %48, %24
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

declare dso_local i32 @MEM_ALIGN_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
