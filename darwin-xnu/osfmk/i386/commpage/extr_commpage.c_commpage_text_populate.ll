; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_text_populate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_text_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next = common dso_local global i64 0, align 8
@commpage_text32_map = common dso_local global i32 0, align 4
@_COMM_PAGE_TEXT_AREA_USED = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@commPagePtr = common dso_local global i8* null, align 8
@commPageTextPtr32 = common dso_local global i8* null, align 8
@_COMM_PAGE_TEXT_START = common dso_local global i32 0, align 4
@commPageBaseOffset = common dso_local global i32 0, align 4
@commpage_32_routines = common dso_local global i32** null, align 8
@_cpu_capabilities = common dso_local global i32 0, align 4
@k64Bit = common dso_local global i32 0, align 4
@commpage_text64_map = common dso_local global i32 0, align 4
@commPageTextPtr64 = common dso_local global i8* null, align 8
@commpage_64_routines = common dso_local global i32** null, align 8
@_COMM_PAGE_TEXT_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"commpage text overflow: next=0x%08x, commPagePtr=%p\00", align 1
@INTEL_PGBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commpage_text_populate() #0 {
  %1 = alloca i32**, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i64 0, i64* @next, align 8
  %4 = load i32, i32* @commpage_text32_map, align 4
  %5 = load i32, i32* @_COMM_PAGE_TEXT_AREA_USED, align 4
  %6 = load i32, i32* @VM_PROT_READ, align 4
  %7 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %8 = or i32 %6, %7
  %9 = call i64 @commpage_allocate(i32 %4, i32 %5, i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** @commPagePtr, align 8
  %11 = load i8*, i8** @commPagePtr, align 8
  store i8* %11, i8** @commPageTextPtr32, align 8
  %12 = load i8*, i8** @commPagePtr, align 8
  store i8* %12, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %22, %0
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @_COMM_PAGE_TEXT_AREA_USED, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 -52, i8* %21, align 1
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %13

25:                                               ; preds = %13
  %26 = load i32, i32* @_COMM_PAGE_TEXT_START, align 4
  store i32 %26, i32* @commPageBaseOffset, align 4
  %27 = load i32**, i32*** @commpage_32_routines, align 8
  store i32** %27, i32*** %1, align 8
  br label %28

28:                                               ; preds = %36, %25
  %29 = load i32**, i32*** %1, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32**, i32*** %1, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @commpage_stuff_routine(i32* %34)
  br label %36

36:                                               ; preds = %32
  %37 = load i32**, i32*** %1, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i32 1
  store i32** %38, i32*** %1, align 8
  br label %28

39:                                               ; preds = %28
  %40 = load i32, i32* @_cpu_capabilities, align 4
  %41 = load i32, i32* @k64Bit, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %39
  store i64 0, i64* @next, align 8
  %45 = load i32, i32* @commpage_text64_map, align 4
  %46 = load i32, i32* @_COMM_PAGE_TEXT_AREA_USED, align 4
  %47 = load i32, i32* @VM_PROT_READ, align 4
  %48 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @commpage_allocate(i32 %45, i32 %46, i32 %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** @commPagePtr, align 8
  %52 = load i8*, i8** @commPagePtr, align 8
  store i8* %52, i8** @commPageTextPtr64, align 8
  %53 = load i8*, i8** @commPagePtr, align 8
  store i8* %53, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %63, %44
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @_COMM_PAGE_TEXT_AREA_USED, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i8*, i8** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 -52, i8* %62, align 1
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %54

66:                                               ; preds = %54
  %67 = load i32**, i32*** @commpage_64_routines, align 8
  store i32** %67, i32*** %1, align 8
  br label %68

68:                                               ; preds = %76, %66
  %69 = load i32**, i32*** %1, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32**, i32*** %1, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @commpage_stuff_routine(i32* %74)
  br label %76

76:                                               ; preds = %72
  %77 = load i32**, i32*** %1, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i32 1
  store i32** %78, i32*** %1, align 8
  br label %68

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %39
  %81 = load i64, i64* @next, align 8
  %82 = load i64, i64* @_COMM_PAGE_TEXT_END, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i64, i64* @next, align 8
  %86 = load i8*, i8** @commPagePtr, align 8
  %87 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %85, i8* %86)
  br label %88

88:                                               ; preds = %84, %80
  ret void
}

declare dso_local i64 @commpage_allocate(i32, i32, i32) #1

declare dso_local i32 @commpage_stuff_routine(i32*) #1

declare dso_local i32 @panic(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
