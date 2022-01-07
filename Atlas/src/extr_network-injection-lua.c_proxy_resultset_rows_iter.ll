; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-injection-lua.c_proxy_resultset_rows_iter.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-injection-lua.c_proxy_resultset_rows_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [24 x i8] c"%s: row-data is invalid\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_resultset_rows_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_resultset_rows_iter(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_upvalueindex(i32 1)
  %15 = call i64 @lua_touserdata(i32* %13, i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_14__**
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %4, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %5, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %7, align 8
  store i32 0, i32* %9, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %11, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @g_return_val_if_fail(i32 %29, i32 0)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %1
  %39 = call i64 @network_mysqld_proto_skip_network_header(%struct.TYPE_13__* %6)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %38, %1
  %42 = phi i1 [ true, %1 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = call i64 @network_mysqld_proto_peek_lenenc_type(%struct.TYPE_13__* %6, i32* %10)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %46, %41
  %50 = phi i1 [ true, %41 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @g_return_val_if_fail(i32 %54, i32 0)
  %56 = load i32, i32* %10, align 4
  switch i32 %56, label %59 [
    i32 130, label %57
    i32 131, label %57
    i32 129, label %58
    i32 128, label %58
  ]

57:                                               ; preds = %49, %49
  store i32 0, i32* %2, align 4
  br label %171

58:                                               ; preds = %49, %49
  br label %59

59:                                               ; preds = %49, %58
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @lua_newtable(i32* %60)
  store i64 0, i64* %8, align 8
  br label %62

62:                                               ; preds = %160, %59
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %163

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = call i64 @network_mysqld_proto_peek_lenenc_type(%struct.TYPE_13__* %6, i32* %10)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i1 [ true, %68 ], [ %73, %71 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @g_return_val_if_fail(i32 %79, i32 0)
  %81 = load i32, i32* %10, align 4
  switch i32 %81, label %150 [
    i32 128, label %82
    i32 129, label %86
  ]

82:                                               ; preds = %74
  %83 = call i32 @network_mysqld_proto_skip(%struct.TYPE_13__* %6, i32 1)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @lua_pushnil(i32* %84)
  br label %151

86:                                               ; preds = %74
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = call i32 @network_mysqld_proto_get_lenenc_int(%struct.TYPE_13__* %6, i32* %12)
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i1 [ true, %86 ], [ %91, %89 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %12, align 4
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %98, %102
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %97, %92
  %106 = phi i1 [ true, %92 ], [ %104, %97 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %112, %113
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sle i32 %114, %118
  %120 = xor i1 %119, true
  br label %121

121:                                              ; preds = %110, %105
  %122 = phi i1 [ true, %105 ], [ %120, %110 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32*, i32** %3, align 8
  %128 = load i32, i32* @G_STRLOC, align 4
  %129 = call i32 @luaL_error(i32* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %128)
  store i32 %129, i32* %2, align 4
  br label %171

130:                                              ; preds = %121
  %131 = load i32*, i32** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %135, %137
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @lua_pushlstring(i32* %131, i32 %138, i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %130
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @network_mysqld_proto_skip(%struct.TYPE_13__* %6, i32 %144)
  %146 = icmp ne i32 %145, 0
  br label %147

147:                                              ; preds = %143, %130
  %148 = phi i1 [ true, %130 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %9, align 4
  br label %151

150:                                              ; preds = %74
  store i32 1, i32* %9, align 4
  br label %151

151:                                              ; preds = %150, %147, %82
  %152 = load i32*, i32** %3, align 8
  %153 = load i64, i64* %8, align 8
  %154 = add nsw i64 %153, 1
  %155 = call i32 @lua_rawseti(i32* %152, i32 -2, i64 %154)
  %156 = load i32, i32* %9, align 4
  %157 = icmp eq i32 %156, 0
  %158 = zext i1 %157 to i32
  %159 = call i32 @g_return_val_if_fail(i32 %158, i32 0)
  br label %160

160:                                              ; preds = %151
  %161 = load i64, i64* %8, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %8, align 8
  br label %62

163:                                              ; preds = %62
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  store %struct.TYPE_16__* %168, %struct.TYPE_16__** %170, align 8
  store i32 1, i32* %2, align 4
  br label %171

171:                                              ; preds = %163, %126, %57
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @g_return_val_if_fail(i32, i32) #1

declare dso_local i64 @network_mysqld_proto_skip_network_header(%struct.TYPE_13__*) #1

declare dso_local i64 @network_mysqld_proto_peek_lenenc_type(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @network_mysqld_proto_skip(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @network_mysqld_proto_get_lenenc_int(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i32, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
