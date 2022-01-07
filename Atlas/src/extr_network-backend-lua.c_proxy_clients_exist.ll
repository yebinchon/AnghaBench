; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-backend-lua.c_proxy_clients_exist.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-backend-lua.c_proxy_clients_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_clients_exist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_clients_exist(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @luaL_checkself(i32* %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_3__**
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @lua_tostring(i32* %11, i32 -1)
  store i32* %12, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @g_ptr_array_index(%struct.TYPE_3__* %21, i64 %22)
  %24 = call i64 @strcmp(i32* %20, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_pushinteger(i32* %27, i32 1)
  store i32 1, i32* %2, align 4
  br label %36

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %13

33:                                               ; preds = %13
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_pushinteger(i32* %34, i32 0)
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i32* @lua_tostring(i32*, i32) #1

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @g_ptr_array_index(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
