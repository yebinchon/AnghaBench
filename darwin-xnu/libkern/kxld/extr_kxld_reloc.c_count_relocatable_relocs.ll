; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_reloc.c_count_relocatable_relocs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_reloc.c_count_relocatable_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.relocation_info = type { i32, i64, i64, i32, i64 (i32)* }
%struct.scattered_relocation_info = type { i32 }

@R_SCATTERED = common dso_local global i32 0, align 4
@R_ABS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.relocation_info*, %struct.relocation_info*, i32)* @count_relocatable_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_relocatable_relocs(%struct.relocation_info* %0, %struct.relocation_info* %1, i32 %2) #0 {
  %4 = alloca %struct.relocation_info*, align 8
  %5 = alloca %struct.relocation_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.relocation_info*, align 8
  %10 = alloca %struct.scattered_relocation_info*, align 8
  store %struct.relocation_info* %0, %struct.relocation_info** %4, align 8
  store %struct.relocation_info* %1, %struct.relocation_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.relocation_info* null, %struct.relocation_info** %9, align 8
  store %struct.scattered_relocation_info* null, %struct.scattered_relocation_info** %10, align 8
  %11 = load %struct.relocation_info*, %struct.relocation_info** %4, align 8
  %12 = call i32 @check(%struct.relocation_info* %11)
  %13 = load %struct.relocation_info*, %struct.relocation_info** %5, align 8
  %14 = call i32 @check(%struct.relocation_info* %13)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %74, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %15
  %20 = load %struct.relocation_info*, %struct.relocation_info** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %20, i64 %22
  store %struct.relocation_info* %23, %struct.relocation_info** %9, align 8
  %24 = load %struct.relocation_info*, %struct.relocation_info** %9, align 8
  %25 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @R_SCATTERED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %19
  %31 = load %struct.relocation_info*, %struct.relocation_info** %9, align 8
  %32 = bitcast %struct.relocation_info* %31 to %struct.scattered_relocation_info*
  store %struct.scattered_relocation_info* %32, %struct.scattered_relocation_info** %10, align 8
  %33 = load %struct.relocation_info*, %struct.relocation_info** %4, align 8
  %34 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %33, i32 0, i32 4
  %35 = load i64 (i32)*, i64 (i32)** %34, align 8
  %36 = load %struct.scattered_relocation_info*, %struct.scattered_relocation_info** %10, align 8
  %37 = getelementptr inbounds %struct.scattered_relocation_info, %struct.scattered_relocation_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 %35(i32 %38)
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %73

45:                                               ; preds = %19
  %46 = load %struct.relocation_info*, %struct.relocation_info** %4, align 8
  %47 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %46, i32 0, i32 4
  %48 = load i64 (i32)*, i64 (i32)** %47, align 8
  %49 = load %struct.relocation_info*, %struct.relocation_info** %9, align 8
  %50 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 %48(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %45
  %55 = load %struct.relocation_info*, %struct.relocation_info** %9, align 8
  %56 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 0, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i64, i64* @R_ABS, align 8
  %61 = load %struct.relocation_info*, %struct.relocation_info** %9, align 8
  %62 = getelementptr inbounds %struct.relocation_info, %struct.relocation_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br label %65

65:                                               ; preds = %59, %54
  %66 = phi i1 [ false, %54 ], [ %64, %59 ]
  br label %67

67:                                               ; preds = %65, %45
  %68 = phi i1 [ true, %45 ], [ %66, %65 ]
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %67, %30
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %15

77:                                               ; preds = %15
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @check(%struct.relocation_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
