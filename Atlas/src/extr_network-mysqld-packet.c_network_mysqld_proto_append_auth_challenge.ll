; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_append_auth_challenge.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_append_auth_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"%d.%02d.%02d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"5.0.99\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"01234567\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"890123456789\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_append_auth_challenge(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @network_mysqld_proto_append_int8(i32* %6, i32 10)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @g_string_append(i32* %13, i64 %16)
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 30000
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 100000
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 10000
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = srem i32 %36, 10000
  %38 = sdiv i32 %37, 100
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = srem i32 %41, 100
  %43 = call i32 @g_string_append_printf(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38, i32 %42)
  br label %48

44:                                               ; preds = %23, %18
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @C(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 (i32*, i32, ...) @g_string_append_len(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %28
  br label %49

49:                                               ; preds = %48, %12
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @network_mysqld_proto_append_int8(i32* %50, i32 0)
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @network_mysqld_proto_append_int32(i32* %52, i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %49
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 (i32*, i32, ...) @g_string_append_len(i32* %64, i32 %70, i32 8)
  br label %76

72:                                               ; preds = %49
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @C(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 (i32*, i32, ...) @g_string_append_len(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %63
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @network_mysqld_proto_append_int8(i32* %77, i32 0)
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @network_mysqld_proto_append_int16(i32* %79, i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @network_mysqld_proto_append_int8(i32* %84, i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @network_mysqld_proto_append_int16(i32* %89, i32 %92)
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %100, %76
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 13
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @network_mysqld_proto_append_int8(i32* %98, i32 0)
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %94

103:                                              ; preds = %94
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %103
  %111 = load i32*, i32** %3, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 (i32*, i32, ...) @g_string_append_len(i32* %111, i32 %118, i32 12)
  br label %124

120:                                              ; preds = %103
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @C(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %123 = call i32 (i32*, i32, ...) @g_string_append_len(i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %110
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @network_mysqld_proto_append_int8(i32* %125, i32 0)
  ret i32 0
}

declare dso_local i32 @network_mysqld_proto_append_int8(i32*, i32) #1

declare dso_local i32 @g_string_append(i32*, i64) #1

declare dso_local i32 @g_string_append_printf(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @g_string_append_len(i32*, i32, ...) #1

declare dso_local i32 @C(i8*) #1

declare dso_local i32 @network_mysqld_proto_append_int32(i32*, i32) #1

declare dso_local i32 @network_mysqld_proto_append_int16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
