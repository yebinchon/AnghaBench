; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug.c_insert_bp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug.c_insert_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bp_entry = type { i32*, i32, %struct.bp_entry* }

@GEKKO_MAX_BP = common dso_local global i64 0, align 8
@bp_entries = common dso_local global %struct.bp_entry* null, align 8
@p_bpentries = common dso_local global %struct.bp_entry* null, align 8
@BPCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @insert_bp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @insert_bp(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bp_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @GEKKO_MAX_BP, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load %struct.bp_entry*, %struct.bp_entry** @bp_entries, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.bp_entry, %struct.bp_entry* %11, i64 %12
  %14 = getelementptr inbounds %struct.bp_entry, %struct.bp_entry* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %22

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %4, align 8
  br label %6

22:                                               ; preds = %17, %6
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @GEKKO_MAX_BP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 0, i64* %2, align 8
  br label %60

27:                                               ; preds = %22
  %28 = load %struct.bp_entry*, %struct.bp_entry** @bp_entries, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.bp_entry, %struct.bp_entry* %28, i64 %29
  store %struct.bp_entry* %30, %struct.bp_entry** %5, align 8
  %31 = load %struct.bp_entry*, %struct.bp_entry** @p_bpentries, align 8
  %32 = load %struct.bp_entry*, %struct.bp_entry** %5, align 8
  %33 = getelementptr inbounds %struct.bp_entry, %struct.bp_entry* %32, i32 0, i32 2
  store %struct.bp_entry* %31, %struct.bp_entry** %33, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.bp_entry*, %struct.bp_entry** %5, align 8
  %37 = getelementptr inbounds %struct.bp_entry, %struct.bp_entry* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.bp_entry*, %struct.bp_entry** %5, align 8
  store %struct.bp_entry* %38, %struct.bp_entry** @p_bpentries, align 8
  %39 = load %struct.bp_entry*, %struct.bp_entry** %5, align 8
  %40 = getelementptr inbounds %struct.bp_entry, %struct.bp_entry* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bp_entry*, %struct.bp_entry** %5, align 8
  %44 = getelementptr inbounds %struct.bp_entry, %struct.bp_entry* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @BPCODE, align 4
  %46 = load %struct.bp_entry*, %struct.bp_entry** %5, align 8
  %47 = getelementptr inbounds %struct.bp_entry, %struct.bp_entry* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32 %45, i32* %48, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = and i64 %50, -32
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @DCStoreRangeNoSync(i8* %52, i32 32)
  %54 = load i8*, i8** %3, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = and i64 %55, -32
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @ICInvalidateRange(i8* %57, i32 32)
  %59 = call i32 (...) @_sync()
  store i64 1, i64* %2, align 8
  br label %60

60:                                               ; preds = %27, %26
  %61 = load i64, i64* %2, align 8
  ret i64 %61
}

declare dso_local i32 @DCStoreRangeNoSync(i8*, i32) #1

declare dso_local i32 @ICInvalidateRange(i8*, i32) #1

declare dso_local i32 @_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
