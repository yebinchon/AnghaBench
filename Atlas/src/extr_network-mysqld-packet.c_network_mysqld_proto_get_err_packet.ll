; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_err_packet.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_err_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@CLIENT_PROTOCOL_41 = common dso_local global i32 0, align 4
@MYSQLD_PACKET_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"%s: expected the first byte to be 0xff, got %d\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_get_err_packet(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %13 = load i32, i32* @CLIENT_PROTOCOL_41, align 4
  store i32 %13, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %12, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i64 @network_mysqld_proto_get_int8(%struct.TYPE_10__* %17, i64* %6)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i1 [ true, %2 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %143

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @MYSQLD_PACKET_ERR, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @G_STRLOC, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @g_critical(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32)
  store i32 -1, i32* %3, align 4
  br label %143

34:                                               ; preds = %26
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = call i64 @network_mysqld_proto_get_int16(%struct.TYPE_10__* %38, i32* %8)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ true, %34 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @CLIENT_PROTOCOL_41, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = call i64 @network_mysqld_proto_get_int8(%struct.TYPE_10__* %52, i64* %7)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ true, %48 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, 35
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i1 [ true, %55 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = call i64 @network_mysqld_proto_get_string_len(%struct.TYPE_10__* %69, i32** %9, i32 5)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %68, %63
  %73 = phi i1 [ true, %63 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %41
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %78, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %75
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = trunc i64 %98 to i32
  %100 = call i64 @network_mysqld_proto_get_string_len(%struct.TYPE_10__* %89, i32** %10, i32 %99)
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %88, %85
  %103 = phi i1 [ true, %85 ], [ %101, %88 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %102, %75
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %126, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @g_string_assign(i32 %117, i32* %118)
  br label %120

120:                                              ; preds = %114, %108
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @g_string_assign(i32 %123, i32* %124)
  br label %126

126:                                              ; preds = %120, %105
  %127 = load i32*, i32** %9, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @g_free(i32* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32*, i32** %10, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32*, i32** %10, align 8
  %137 = call i32 @g_free(i32* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 -1, i32 0
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %138, %30, %25
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @network_mysqld_proto_get_int8(%struct.TYPE_10__*, i64*) #1

declare dso_local i32 @g_critical(i8*, i32, i64) #1

declare dso_local i64 @network_mysqld_proto_get_int16(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @network_mysqld_proto_get_string_len(%struct.TYPE_10__*, i32**, i32) #1

declare dso_local i32 @g_string_assign(i32, i32*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
