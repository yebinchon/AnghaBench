; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_bios.c_ConvertMonthAndDay.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_bios.c_ConvertMonthAndDay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.ConvertMonthAndDay.monthtbl = private unnamed_addr constant [11 x i32] [i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @ConvertMonthAndDay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConvertMonthAndDay(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [11 x i32], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = bitcast [11 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([11 x i32]* @__const.ConvertMonthAndDay.monthtbl to i8*), i64 44, i1 false)
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 0
  %14 = load i32, i32* %13, align 16
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MappedMemoryWriteByte(i32 %17, i32 1)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @MappedMemoryWriteByte(i32 %19, i32 %21)
  br label %87

23:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 11
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %39

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %24

39:                                               ; preds = %34, %24
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %72

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @MappedMemoryWriteByte(i32 %43, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %52, %57
  %59 = add nsw i32 %58, 1
  %60 = call i32 @MappedMemoryWriteByte(i32 %51, i32 %59)
  br label %71

61:                                               ; preds = %42
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %63, %68
  %70 = call i32 @MappedMemoryWriteByte(i32 %62, i32 %69)
  br label %71

71:                                               ; preds = %61, %50
  br label %87

72:                                               ; preds = %39
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @MappedMemoryWriteByte(i32 %73, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %78, %83
  %85 = add nsw i32 %84, 1
  %86 = call i32 @MappedMemoryWriteByte(i32 %77, i32 %85)
  br label %87

87:                                               ; preds = %16, %72, %71
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @MappedMemoryWriteByte(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
