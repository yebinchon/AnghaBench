; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_quarantine.c_quarantine.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_quarantine.c_quarantine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i8* }

@config_prof = common dso_local global i32 0, align 4
@config_fill = common dso_local global i64 0, align 8
@opt_quarantine = common dso_local global i64 0, align 8
@opt_junk_free = common dso_local global i32 0, align 4
@config_valgrind = common dso_local global i32 0, align 4
@in_valgrind = common dso_local global i32 0, align 4
@SMALL_MAXCLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quarantine(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @config_prof, align 4
  %12 = call i64 @isalloc(i8* %10, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @config_fill, align 8
  %14 = call i32 @cassert(i64 %13)
  %15 = load i64, i64* @opt_quarantine, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_7__* @tsd_quarantine_get(i32* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %5, align 8
  %20 = icmp eq %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @idalloctm(i32* %22, i8* %23, i32* null, i32 0)
  br label %157

25:                                               ; preds = %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %28, %29
  %31 = load i64, i64* @opt_quarantine, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %25
  %34 = load i64, i64* @opt_quarantine, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i64, i64* @opt_quarantine, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %38, %39
  br label %42

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i64 [ %40, %37 ], [ 0, %41 ]
  store i64 %43, i64* %7, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @quarantine_drain(i32* %44, %struct.TYPE_7__* %45, i64 %46)
  br label %48

48:                                               ; preds = %42, %25
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ZU(i32 1)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %52, %55
  %57 = icmp eq i32 %51, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = call %struct.TYPE_7__* @quarantine_grow(i32* %59, %struct.TYPE_7__* %60)
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %5, align 8
  br label %62

62:                                               ; preds = %58, %48
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ZU(i32 1)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %66, %69
  %71 = icmp slt i32 %65, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %76, %77
  %79 = load i64, i64* @opt_quarantine, align 8
  %80 = icmp ule i64 %78, %79
  br i1 %80, label %81, label %147

81:                                               ; preds = %62
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %84, %87
  %89 = call i32 @ZU(i32 1)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %89, %92
  %94 = sub nsw i32 %93, 1
  %95 = and i32 %88, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %8, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %100
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %9, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load i64, i64* @config_fill, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %81
  %120 = load i32, i32* @opt_junk_free, align 4
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %146

123:                                              ; preds = %119
  %124 = load i32, i32* @config_valgrind, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i32, i32* @in_valgrind, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i64 @likely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %126, %123
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* @SMALL_MAXCLASS, align 8
  %136 = icmp ule i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i8*, i8** %4, align 8
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @arena_quarantine_junk_small(i8* %138, i64 %139)
  br label %145

141:                                              ; preds = %133, %126
  %142 = load i8*, i8** %4, align 8
  %143 = load i64, i64* %6, align 8
  %144 = call i32 @memset(i8* %142, i32 90, i64 %143)
  br label %145

145:                                              ; preds = %141, %137
  br label %146

146:                                              ; preds = %145, %119, %81
  br label %157

147:                                              ; preds = %62
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load i32*, i32** %3, align 8
  %155 = load i8*, i8** %4, align 8
  %156 = call i32 @idalloctm(i32* %154, i8* %155, i32* null, i32 0)
  br label %157

157:                                              ; preds = %21, %147, %146
  ret void
}

declare dso_local i64 @isalloc(i8*, i32) #1

declare dso_local i32 @cassert(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @tsd_quarantine_get(i32*) #1

declare dso_local i32 @idalloctm(i32*, i8*, i32*, i32) #1

declare dso_local i32 @quarantine_drain(i32*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @ZU(i32) #1

declare dso_local %struct.TYPE_7__* @quarantine_grow(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @arena_quarantine_junk_small(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
