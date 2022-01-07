; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_fielddefs.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_fielddefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64, i32 }

@CLIENT_PROTOCOL_41 = common dso_local global i32 0, align 4
@NETWORK_MYSQLD_LENENC_TYPE_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @network_mysqld_proto_get_fielddefs(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @CLIENT_PROTOCOL_41, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = call i64 @network_mysqld_proto_skip_network_header(%struct.TYPE_10__* %6)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %21, %2
  %25 = phi i1 [ true, %2 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = call i64 @network_mysqld_proto_peek_lenenc_type(%struct.TYPE_10__* %6, i32* %11)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i1 [ true, %24 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %146

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  switch i32 %39, label %41 [
    i32 128, label %40
  ]

40:                                               ; preds = %38
  br label %42

41:                                               ; preds = %38
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %146

42:                                               ; preds = %40
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = call i64 @network_mysqld_proto_get_lenenc_int(%struct.TYPE_10__* %6, i64* %7)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ true, %42 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %146

54:                                               ; preds = %48
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %146

58:                                               ; preds = %54
  store i64 0, i64* %8, align 8
  br label %59

59:                                               ; preds = %100, %58
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %103

63:                                               ; preds = %59
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %4, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = call i32 @g_assert(%struct.TYPE_11__* %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = call i32* (...) @network_mysqld_proto_fielddef_new()
  store i32* %74, i32** %12, align 8
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %63
  %78 = call i64 @network_mysqld_proto_skip_network_header(%struct.TYPE_10__* %6)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %77, %63
  %81 = phi i1 [ true, %63 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @network_mysqld_proto_get_fielddef(%struct.TYPE_10__* %6, i32* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i1 [ true, %80 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %9, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @g_ptr_array_add(i32* %93, i32* %94)
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %146

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %8, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %8, align 8
  br label %59

103:                                              ; preds = %59
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %4, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = icmp ne %struct.TYPE_11__* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %146

110:                                              ; preds = %103
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 %113, i32* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %110
  %119 = call i64 @network_mysqld_proto_skip_network_header(%struct.TYPE_10__* %6)
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %118, %110
  %122 = phi i1 [ true, %110 ], [ %120, %118 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = call i64 @network_mysqld_proto_peek_lenenc_type(%struct.TYPE_10__* %6, i32* %11)
  %128 = icmp ne i64 %127, 0
  br label %129

129:                                              ; preds = %126, %121
  %130 = phi i1 [ true, %121 ], [ %128, %126 ]
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @NETWORK_MYSQLD_LENENC_TYPE_EOF, align 4
  %137 = icmp ne i32 %135, %136
  br label %138

138:                                              ; preds = %134, %129
  %139 = phi i1 [ true, %129 ], [ %137, %134 ]
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %146

144:                                              ; preds = %138
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %3, align 8
  br label %146

146:                                              ; preds = %144, %143, %109, %98, %57, %53, %41, %37
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %147
}

declare dso_local i64 @network_mysqld_proto_skip_network_header(%struct.TYPE_10__*) #1

declare dso_local i64 @network_mysqld_proto_peek_lenenc_type(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @network_mysqld_proto_get_lenenc_int(%struct.TYPE_10__*, i64*) #1

declare dso_local i32 @g_assert(%struct.TYPE_11__*) #1

declare dso_local i32* @network_mysqld_proto_fielddef_new(...) #1

declare dso_local i64 @network_mysqld_proto_get_fielddef(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @g_ptr_array_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
