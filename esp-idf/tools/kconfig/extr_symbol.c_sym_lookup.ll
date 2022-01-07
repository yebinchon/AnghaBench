; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_symbol.c_sym_lookup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_symbol.c_sym_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i8*, i32, %struct.symbol*, i32 }

@symbol_yes = common dso_local global %struct.symbol zeroinitializer, align 8
@symbol_mod = common dso_local global %struct.symbol zeroinitializer, align 8
@symbol_no = common dso_local global %struct.symbol zeroinitializer, align 8
@SYMBOL_HASHSIZE = common dso_local global i32 0, align 4
@symbol_hash = common dso_local global %struct.symbol** null, align 8
@SYMBOL_CONST = common dso_local global i32 0, align 4
@SYMBOL_CHOICE = common dso_local global i32 0, align 4
@S_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @sym_lookup(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %85

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %30 [
    i32 121, label %27
    i32 109, label %28
    i32 110, label %29
  ]

27:                                               ; preds = %22
  store %struct.symbol* @symbol_yes, %struct.symbol** %3, align 8
  br label %114

28:                                               ; preds = %22
  store %struct.symbol* @symbol_mod, %struct.symbol** %3, align 8
  br label %114

29:                                               ; preds = %22
  store %struct.symbol* @symbol_no, %struct.symbol** %3, align 8
  br label %114

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %17, %11
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strhash(i8* %32)
  %34 = load i32, i32* @SYMBOL_HASHSIZE, align 4
  %35 = srem i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.symbol**, %struct.symbol*** @symbol_hash, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.symbol*, %struct.symbol** %36, i64 %38
  %40 = load %struct.symbol*, %struct.symbol** %39, align 8
  store %struct.symbol* %40, %struct.symbol** %6, align 8
  br label %41

41:                                               ; preds = %78, %31
  %42 = load %struct.symbol*, %struct.symbol** %6, align 8
  %43 = icmp ne %struct.symbol* %42, null
  br i1 %43, label %44, label %82

44:                                               ; preds = %41
  %45 = load %struct.symbol*, %struct.symbol** %6, align 8
  %46 = getelementptr inbounds %struct.symbol, %struct.symbol* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = load %struct.symbol*, %struct.symbol** %6, align 8
  %51 = getelementptr inbounds %struct.symbol, %struct.symbol* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @strcmp(i8* %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.symbol*, %struct.symbol** %6, align 8
  %61 = getelementptr inbounds %struct.symbol, %struct.symbol* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %77

66:                                               ; preds = %56
  %67 = load %struct.symbol*, %struct.symbol** %6, align 8
  %68 = getelementptr inbounds %struct.symbol, %struct.symbol* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SYMBOL_CONST, align 4
  %71 = load i32, i32* @SYMBOL_CHOICE, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %66, %59
  %76 = load %struct.symbol*, %struct.symbol** %6, align 8
  store %struct.symbol* %76, %struct.symbol** %3, align 8
  br label %114

77:                                               ; preds = %66, %59, %49, %44
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.symbol*, %struct.symbol** %6, align 8
  %80 = getelementptr inbounds %struct.symbol, %struct.symbol* %79, i32 0, i32 2
  %81 = load %struct.symbol*, %struct.symbol** %80, align 8
  store %struct.symbol* %81, %struct.symbol** %6, align 8
  br label %41

82:                                               ; preds = %41
  %83 = load i8*, i8** %4, align 8
  %84 = call i8* @strdup(i8* %83)
  store i8* %84, i8** %7, align 8
  br label %86

85:                                               ; preds = %2
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = call %struct.symbol* @xmalloc(i32 32)
  store %struct.symbol* %87, %struct.symbol** %6, align 8
  %88 = load %struct.symbol*, %struct.symbol** %6, align 8
  %89 = call i32 @memset(%struct.symbol* %88, i32 0, i32 32)
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.symbol*, %struct.symbol** %6, align 8
  %92 = getelementptr inbounds %struct.symbol, %struct.symbol* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @S_UNKNOWN, align 4
  %94 = load %struct.symbol*, %struct.symbol** %6, align 8
  %95 = getelementptr inbounds %struct.symbol, %struct.symbol* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.symbol*, %struct.symbol** %6, align 8
  %98 = getelementptr inbounds %struct.symbol, %struct.symbol* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.symbol**, %struct.symbol*** @symbol_hash, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.symbol*, %struct.symbol** %101, i64 %103
  %105 = load %struct.symbol*, %struct.symbol** %104, align 8
  %106 = load %struct.symbol*, %struct.symbol** %6, align 8
  %107 = getelementptr inbounds %struct.symbol, %struct.symbol* %106, i32 0, i32 2
  store %struct.symbol* %105, %struct.symbol** %107, align 8
  %108 = load %struct.symbol*, %struct.symbol** %6, align 8
  %109 = load %struct.symbol**, %struct.symbol*** @symbol_hash, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.symbol*, %struct.symbol** %109, i64 %111
  store %struct.symbol* %108, %struct.symbol** %112, align 8
  %113 = load %struct.symbol*, %struct.symbol** %6, align 8
  store %struct.symbol* %113, %struct.symbol** %3, align 8
  br label %114

114:                                              ; preds = %86, %75, %29, %28, %27
  %115 = load %struct.symbol*, %struct.symbol** %3, align 8
  ret %struct.symbol* %115
}

declare dso_local i32 @strhash(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.symbol* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.symbol*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
