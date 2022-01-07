; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_tte_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_tte_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"pmap_tte_deallocate(): null tt_entry ttep==%p\0A\00", align 1
@PMAP_TT_MAX_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"pmap_tte_deallocate(): pmap=%p ttep=%p ptd=%p refcnt=0x%x \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i32)* @pmap_tte_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_tte_remove(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64*, i64** %5, align 8
  %14 = call i32 (i8*, i64*, ...) @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64* %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* %6, align 4
  %17 = add i32 %16, 1
  %18 = load i32, i32* @PMAP_TT_MAX_LEVEL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load i64, i64* %7, align 8
  %22 = call %struct.TYPE_4__* @tte_get_ptd(i64 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ttetokv(i64 %26)
  %28 = call i64 @ARM_PT_DESC_INDEX(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %20
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i64*
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call %struct.TYPE_4__* @tte_get_ptd(i64 %38)
  %40 = load i64, i64* %7, align 8
  %41 = call %struct.TYPE_4__* @tte_get_ptd(i64 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ttetokv(i64 %45)
  %47 = call i64 @ARM_PT_DESC_INDEX(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i8*, i64*, ...) @panic(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64* %36, i64* %37, %struct.TYPE_4__* %39, i64 %50)
  br label %52

52:                                               ; preds = %33, %20, %15
  %53 = load i64*, i64** %5, align 8
  store i64 0, i64* %53, align 8
  %54 = load i64*, i64** %5, align 8
  %55 = call i32 @FLUSH_PTE_STRONG(i64* %54)
  ret void
}

declare dso_local i32 @panic(i8*, i64*, ...) #1

declare dso_local %struct.TYPE_4__* @tte_get_ptd(i64) #1

declare dso_local i64 @ARM_PT_DESC_INDEX(i32) #1

declare dso_local i32 @ttetokv(i64) #1

declare dso_local i32 @FLUSH_PTE_STRONG(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
