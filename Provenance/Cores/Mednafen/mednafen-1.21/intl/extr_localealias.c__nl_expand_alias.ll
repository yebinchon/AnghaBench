; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_localealias.c__nl_expand_alias.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_localealias.c__nl_expand_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_map = type { i8*, i8* }

@_nl_expand_alias.locale_alias_path = internal global i8* null, align 8
@lock = common dso_local global i32 0, align 4
@LOCALE_ALIAS_PATH = common dso_local global i8* null, align 8
@nmap = common dso_local global i64 0, align 8
@map = common dso_local global i32 0, align 4
@alias_compare = common dso_local global i64 0, align 8
@PATH_SEPARATOR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_nl_expand_alias(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.alias_map*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.alias_map, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %4, align 8
  %8 = load i32, i32* @lock, align 4
  %9 = call i32 @__libc_lock_lock(i32 %8)
  %10 = load i8*, i8** @_nl_expand_alias.locale_alias_path, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i8*, i8** @LOCALE_ALIAS_PATH, align 8
  store i8* %13, i8** @_nl_expand_alias.locale_alias_path, align 8
  br label %14

14:                                               ; preds = %12, %1
  br label %15

15:                                               ; preds = %95, %14
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds %struct.alias_map, %struct.alias_map* %6, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i64, i64* @nmap, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32, i32* @map, align 4
  %22 = load i64, i64* @nmap, align 8
  %23 = load i64, i64* @alias_compare, align 8
  %24 = inttoptr i64 %23 to i32 (i8*, i8*)*
  %25 = call i64 @bsearch(%struct.alias_map* %6, i32 %21, i64 %22, i32 16, i32 (i8*, i8*)* %24)
  %26 = inttoptr i64 %25 to %struct.alias_map*
  store %struct.alias_map* %26, %struct.alias_map** %3, align 8
  br label %28

27:                                               ; preds = %15
  store %struct.alias_map* null, %struct.alias_map** %3, align 8
  br label %28

28:                                               ; preds = %27, %20
  %29 = load %struct.alias_map*, %struct.alias_map** %3, align 8
  %30 = icmp ne %struct.alias_map* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.alias_map*, %struct.alias_map** %3, align 8
  %33 = getelementptr inbounds %struct.alias_map, %struct.alias_map* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %4, align 8
  br label %98

35:                                               ; preds = %28
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %93, %35
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i8*, i8** @_nl_expand_alias.locale_alias_path, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ false, %36 ], [ %44, %39 ]
  br i1 %46, label %47, label %94

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %56, %47
  %49 = load i8*, i8** @_nl_expand_alias.locale_alias_path, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* @PATH_SEPARATOR, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i8*, i8** @_nl_expand_alias.locale_alias_path, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** @_nl_expand_alias.locale_alias_path, align 8
  br label %48

59:                                               ; preds = %48
  %60 = load i8*, i8** @_nl_expand_alias.locale_alias_path, align 8
  store i8* %60, i8** %7, align 8
  br label %61

61:                                               ; preds = %77, %59
  %62 = load i8*, i8** @_nl_expand_alias.locale_alias_path, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i8*, i8** @_nl_expand_alias.locale_alias_path, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8, i8* @PATH_SEPARATOR, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %71, %73
  br label %75

75:                                               ; preds = %67, %61
  %76 = phi i1 [ false, %61 ], [ %74, %67 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i8*, i8** @_nl_expand_alias.locale_alias_path, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** @_nl_expand_alias.locale_alias_path, align 8
  br label %61

80:                                               ; preds = %75
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** @_nl_expand_alias.locale_alias_path, align 8
  %83 = icmp ult i8* %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** @_nl_expand_alias.locale_alias_path, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = call i64 @read_alias_file(i8* %85, i32 %91)
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %84, %80
  br label %36

94:                                               ; preds = %45
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %5, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %15, label %98

98:                                               ; preds = %95, %31
  %99 = load i32, i32* @lock, align 4
  %100 = call i32 @__libc_lock_unlock(i32 %99)
  %101 = load i8*, i8** %4, align 8
  ret i8* %101
}

declare dso_local i32 @__libc_lock_lock(i32) #1

declare dso_local i64 @bsearch(%struct.alias_map*, i32, i64, i32, i32 (i8*, i8*)*) #1

declare dso_local i64 @read_alias_file(i8*, i32) #1

declare dso_local i32 @__libc_lock_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
