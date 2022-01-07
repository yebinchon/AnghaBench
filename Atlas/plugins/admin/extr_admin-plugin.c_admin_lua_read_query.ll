; ModuleID = '/home/carl/AnghaBench/Atlas/plugins/admin/extr_admin-plugin.c_admin_lua_read_query.c'
source_filename = "/home/carl/AnghaBench/Atlas/plugins/admin/extr_admin-plugin.c_admin_lua_read_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_18__*, i8*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@NET_HEADER_SIZE = common dso_local global i32 0, align 4
@COM_QUERY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [6 x i8] c"LOAD \00", align 1
@CON_STATE_SEND_ERROR = common dso_local global i8* null, align 8
@PROXY_SEND_INJECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @admin_lua_read_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @admin_lua_read_query(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %4, align 8
  store i8 -1, i8* %5, align 1
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %6, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %7, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %8, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NET_HEADER_SIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 132, i32* %2, align 4
  br label %81

31:                                               ; preds = %1
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* @NET_HEADER_SIZE, align 4
  %36 = add nsw i32 %35, 0
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %5, align 1
  %40 = load i8, i8* @COM_QUERY, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* %5, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %31
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NET_HEADER_SIZE, align 4
  %50 = add nsw i32 %49, 2
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 132, i32* %2, align 4
  br label %81

53:                                               ; preds = %45
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NET_HEADER_SIZE, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = icmp uge i64 %60, 5
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @NET_HEADER_SIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = call i32 @C(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %71 = call i64 @g_ascii_strncasecmp(i8* %69, i32 %70)
  %72 = icmp eq i64 0, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  store i32 132, i32* %2, align 4
  br label %81

74:                                               ; preds = %62, %53
  br label %75

75:                                               ; preds = %74, %31
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = call i32 @network_injection_queue_reset(%struct.TYPE_15__* %79)
  store i32 133, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %73, %52, %30
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @g_ascii_strncasecmp(i8*, i32) #1

declare dso_local i32 @C(i8*) #1

declare dso_local i32 @network_injection_queue_reset(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
