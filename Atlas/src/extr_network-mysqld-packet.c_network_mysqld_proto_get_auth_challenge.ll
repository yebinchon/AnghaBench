; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_auth_challenge.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_auth_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s: unknown protocol %d\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@CLIENT_SECURE_CONNECTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%d.%d.%d%*s\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: protocol 10, but version number not parsable\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s: protocol 10, but version number out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_get_auth_challenge(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @network_mysqld_proto_get_int8(i32* %16, i32* %11)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ true, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %229

25:                                               ; preds = %19
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %29 [
    i32 255, label %27
    i32 10, label %28
  ]

27:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %229

28:                                               ; preds = %25
  br label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @G_STRLOC, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @g_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  store i32 -1, i32* %3, align 4
  br label %229

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  %40 = call i64 @network_mysqld_proto_get_string(i32* %37, i32** %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i1 [ true, %33 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* null, %50
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ true, %42 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 6
  %61 = call i64 @network_mysqld_proto_get_int32(i32* %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i1 [ true, %52 ], [ %62, %57 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %4, align 8
  %70 = call i64 @network_mysqld_proto_get_string_len(i32* %69, i32** %9, i32 8)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %68, %63
  %73 = phi i1 [ true, %63 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %4, align 8
  %79 = call i64 @network_mysqld_proto_skip(i32* %78, i32 1)
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %77, %72
  %82 = phi i1 [ true, %72 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i64 @network_mysqld_proto_get_int16(i32* %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br label %92

92:                                               ; preds = %86, %81
  %93 = phi i1 [ true, %81 ], [ %91, %86 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = call i64 @network_mysqld_proto_get_int8(i32* %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %97, %92
  %104 = phi i1 [ true, %92 ], [ %102, %97 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load i32*, i32** %4, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = call i64 @network_mysqld_proto_get_int16(i32* %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %108, %103
  %115 = phi i1 [ true, %103 ], [ %113, %108 ]
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = load i32*, i32** %4, align 8
  %121 = call i64 @network_mysqld_proto_skip(i32* %120, i32 13)
  %122 = icmp ne i64 %121, 0
  br label %123

123:                                              ; preds = %119, %114
  %124 = phi i1 [ true, %114 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %12, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CLIENT_SECURE_CONNECTION, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %123
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = load i32*, i32** %4, align 8
  %137 = call i64 @network_mysqld_proto_get_string_len(i32* %136, i32** %10, i32 12)
  %138 = icmp ne i64 %137, 0
  br label %139

139:                                              ; preds = %135, %132
  %140 = phi i1 [ true, %132 ], [ %138, %135 ]
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = load i32*, i32** %4, align 8
  %146 = call i64 @network_mysqld_proto_skip(i32* %145, i32 1)
  %147 = icmp ne i64 %146, 0
  br label %148

148:                                              ; preds = %144, %139
  %149 = phi i1 [ true, %139 ], [ %147, %144 ]
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %148, %123
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %212, label %154

154:                                              ; preds = %151
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 5
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @sscanf(i32* %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* %7, i32* %8)
  %159 = icmp ne i32 3, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i32, i32* @G_STRLOC, align 4
  %162 = call i32 @g_critical(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %161)
  store i32 -1, i32* %3, align 4
  br label %229

163:                                              ; preds = %154
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %7, align 4
  %168 = icmp sgt i32 %167, 100
  br i1 %168, label %181, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %8, align 4
  %174 = icmp sgt i32 %173, 100
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %6, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %6, align 4
  %180 = icmp sgt i32 %179, 10
  br i1 %180, label %181, label %184

181:                                              ; preds = %178, %175, %172, %169, %166, %163
  %182 = load i32, i32* @G_STRLOC, align 4
  %183 = call i32 @g_critical(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %182)
  store i32 -1, i32* %3, align 4
  br label %229

184:                                              ; preds = %178
  %185 = load i32, i32* %6, align 4
  %186 = mul nsw i32 %185, 10000
  %187 = load i32, i32* %7, align 4
  %188 = mul nsw i32 %187, 100
  %189 = add nsw i32 %186, %188
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %189, %190
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @g_string_truncate(i32 %196, i32 0)
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32*, i32** %9, align 8
  %202 = call i32 @g_string_append_len(i32 %200, i32* %201, i32 8)
  %203 = load i32*, i32** %10, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %211

205:                                              ; preds = %184
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = load i32*, i32** %10, align 8
  %210 = call i32 @g_string_append_len(i32 %208, i32* %209, i32 12)
  br label %211

211:                                              ; preds = %205, %184
  br label %212

212:                                              ; preds = %211, %151
  %213 = load i32*, i32** %9, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32*, i32** %9, align 8
  %217 = call i32 @g_free(i32* %216)
  br label %218

218:                                              ; preds = %215, %212
  %219 = load i32*, i32** %10, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load i32*, i32** %10, align 8
  %223 = call i32 @g_free(i32* %222)
  br label %224

224:                                              ; preds = %221, %218
  %225 = load i32, i32* %12, align 4
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 -1, i32 0
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %224, %181, %160, %29, %27, %24
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local i64 @network_mysqld_proto_get_int8(i32*, i32*) #1

declare dso_local i32 @g_debug(i8*, i32, i32) #1

declare dso_local i64 @network_mysqld_proto_get_string(i32*, i32**) #1

declare dso_local i64 @network_mysqld_proto_get_int32(i32*, i32*) #1

declare dso_local i64 @network_mysqld_proto_get_string_len(i32*, i32**, i32) #1

declare dso_local i64 @network_mysqld_proto_skip(i32*, i32) #1

declare dso_local i64 @network_mysqld_proto_get_int16(i32*, i32*) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @g_critical(i8*, i32) #1

declare dso_local i32 @g_string_truncate(i32, i32) #1

declare dso_local i32 @g_string_append_len(i32, i32*, i32) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
