; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/lua/extr_testlib.c_push_rmsgpack_value.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/lua/extr_testlib.c_push_rmsgpack_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_dom_value = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.rmsgpack_dom_value* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.rmsgpack_dom_value*)* @push_rmsgpack_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_rmsgpack_value(i32* %0, %struct.rmsgpack_dom_value* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rmsgpack_dom_value*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.rmsgpack_dom_value* %1, %struct.rmsgpack_dom_value** %4, align 8
  %6 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %7 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %136 [
    i32 132, label %9
    i32 128, label %16
    i32 134, label %23
    i32 133, label %36
    i32 130, label %43
    i32 129, label %46
    i32 131, label %59
    i32 135, label %100
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %12 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @lua_pushnumber(i32* %10, i32 %14)
  br label %136

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %19 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @lua_pushnumber(i32* %17, i32 %21)
  br label %136

23:                                               ; preds = %2
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %26 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %31 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @lua_pushlstring(i32* %24, i32 %29, i32 %34)
  br label %136

36:                                               ; preds = %2
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %39 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @lua_pushboolean(i32* %37, i32 %41)
  br label %136

43:                                               ; preds = %2
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_pushnil(i32* %44)
  br label %136

46:                                               ; preds = %2
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %49 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %54 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @lua_pushlstring(i32* %47, i32 %52, i32 %57)
  br label %136

59:                                               ; preds = %2
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %62 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @lua_createtable(i32* %60, i64 0, i64 %65)
  store i64 0, i64* %5, align 8
  br label %67

67:                                               ; preds = %96, %59
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %70 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %68, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %67
  %76 = load i32*, i32** %3, align 8
  %77 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %78 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  call void @push_rmsgpack_value(i32* %76, %struct.rmsgpack_dom_value* %84)
  %85 = load i32*, i32** %3, align 8
  %86 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %87 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  call void @push_rmsgpack_value(i32* %85, %struct.rmsgpack_dom_value* %93)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @lua_settable(i32* %94, i32 -3)
  br label %96

96:                                               ; preds = %75
  %97 = load i64, i64* %5, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %5, align 8
  br label %67

99:                                               ; preds = %67
  br label %136

100:                                              ; preds = %2
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %103 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @lua_createtable(i32* %101, i64 %106, i64 0)
  store i64 0, i64* %5, align 8
  br label %108

108:                                              ; preds = %132, %100
  %109 = load i64, i64* %5, align 8
  %110 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %111 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %109, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %108
  %117 = load i32*, i32** %3, align 8
  %118 = load i64, i64* %5, align 8
  %119 = add i64 %118, 1
  %120 = trunc i64 %119 to i32
  %121 = call i32 @lua_pushnumber(i32* %117, i32 %120)
  %122 = load i32*, i32** %3, align 8
  %123 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %124 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %127, i64 %128
  call void @push_rmsgpack_value(i32* %122, %struct.rmsgpack_dom_value* %129)
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 @lua_settable(i32* %130, i32 -3)
  br label %132

132:                                              ; preds = %116
  %133 = load i64, i64* %5, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %5, align 8
  br label %108

135:                                              ; preds = %108
  br label %136

136:                                              ; preds = %2, %135, %99, %46, %43, %36, %23, %16, %9
  ret void
}

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i32, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_createtable(i32*, i64, i64) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
