; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_stmt_execute_packet.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_stmt_execute_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, i64, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: couldn't create type = %d\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_get_stmt_execute_packet(i32* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %21 = call i64 @network_mysqld_proto_get_stmt_execute_packet_stmt_id(i32* %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %17, %3
  %24 = phi i1 [ true, %3 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  %32 = call i64 @network_mysqld_proto_get_int8(i32* %29, i64* %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ true, %23 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = call i64 @network_mysqld_proto_get_int32(i32* %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %39, %34
  %46 = phi i1 [ true, %34 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 0, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 -1, i32 0
  store i32 %54, i32* %4, align 4
  br label %203

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 7
  %58 = sdiv i32 %57, 8
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.TYPE_14__* @g_string_sized_new(i32 %59)
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %55
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %67 = call i64 @network_mysqld_proto_get_gstring_len(i32* %64, i32 %65, %struct.TYPE_14__* %66)
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %63, %55
  %70 = phi i1 [ true, %55 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = call i64 @network_mysqld_proto_get_int8(i32* %75, i64* %77)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %74, %69
  %81 = phi i1 [ true, %69 ], [ %79, %74 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 0, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32 @g_string_free(%struct.TYPE_14__* %86, i32 %87)
  store i32 -1, i32* %4, align 4
  br label %203

89:                                               ; preds = %80
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %195

94:                                               ; preds = %89
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %156, %94
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 0, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %99, %100
  br label %102

102:                                              ; preds = %98, %95
  %103 = phi i1 [ false, %95 ], [ %101, %98 ]
  br i1 %103, label %104, label %159

104:                                              ; preds = %102
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load i32*, i32** %5, align 8
  %109 = call i64 @network_mysqld_proto_get_int16(i32* %108, i32* %12)
  %110 = icmp ne i64 %109, 0
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i1 [ true, %104 ], [ %110, %107 ]
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 0, %114
  br i1 %115, label %116, label %155

116:                                              ; preds = %111
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, 255
  %119 = call %struct.TYPE_12__* @network_mysqld_type_new(i32 %118)
  store %struct.TYPE_12__* %119, %struct.TYPE_12__** %13, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %121 = icmp eq %struct.TYPE_12__* null, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load i32, i32* @G_STRLOC, align 4
  %124 = load i32, i32* %12, align 4
  %125 = and i32 %124, 255
  %126 = call i32 @g_critical(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %123, i32 %125)
  store i32 -1, i32* %8, align 4
  br label %159

127:                                              ; preds = %116
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sdiv i32 %131, 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %11, align 4
  %137 = srem i32 %136, 8
  %138 = shl i32 1, %137
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %12, align 4
  %145 = and i32 %144, 32768
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %154 = call i32 @g_ptr_array_add(i32 %152, %struct.TYPE_12__* %153)
  br label %155

155:                                              ; preds = %127, %111
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %95

159:                                              ; preds = %122, %102
  store i32 0, i32* %11, align 4
  br label %160

160:                                              ; preds = %191, %159
  %161 = load i32, i32* %8, align 4
  %162 = icmp eq i32 0, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp slt i32 %164, %165
  br label %167

167:                                              ; preds = %163, %160
  %168 = phi i1 [ false, %160 ], [ %166, %163 ]
  br i1 %168, label %169, label %194

169:                                              ; preds = %167
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = call %struct.TYPE_12__* @g_ptr_array_index(i32 %172, i32 %173)
  store %struct.TYPE_12__* %174, %struct.TYPE_12__** %14, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %169
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %179
  %183 = load i32*, i32** %5, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %185 = call i64 @network_mysqld_proto_binary_get_type(i32* %183, %struct.TYPE_12__* %184)
  %186 = icmp ne i64 %185, 0
  br label %187

187:                                              ; preds = %182, %179
  %188 = phi i1 [ true, %179 ], [ %186, %182 ]
  %189 = zext i1 %188 to i32
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %187, %169
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  br label %160

194:                                              ; preds = %167
  br label %195

195:                                              ; preds = %194, %89
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %197 = load i32, i32* @TRUE, align 4
  %198 = call i32 @g_string_free(%struct.TYPE_14__* %196, i32 %197)
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 -1, i32 0
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %195, %85, %50
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i64 @network_mysqld_proto_get_stmt_execute_packet_stmt_id(i32*, i32*) #1

declare dso_local i64 @network_mysqld_proto_get_int8(i32*, i64*) #1

declare dso_local i64 @network_mysqld_proto_get_int32(i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @g_string_sized_new(i32) #1

declare dso_local i64 @network_mysqld_proto_get_gstring_len(i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @network_mysqld_proto_get_int16(i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @network_mysqld_type_new(i32) #1

declare dso_local i32 @g_critical(i8*, i32, i32) #1

declare dso_local i32 @g_ptr_array_add(i32, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @g_ptr_array_index(i32, i32) #1

declare dso_local i64 @network_mysqld_proto_binary_get_type(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
