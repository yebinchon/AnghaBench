; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack_dom.c_rmsgpack_dom_value_cmp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack_dom.c_rmsgpack_dom_value_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_dom_value = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.rmsgpack_dom_value* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmsgpack_dom_value_cmp(%struct.rmsgpack_dom_value* %0, %struct.rmsgpack_dom_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rmsgpack_dom_value*, align 8
  %5 = alloca %struct.rmsgpack_dom_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rmsgpack_dom_value* %0, %struct.rmsgpack_dom_value** %4, align 8
  store %struct.rmsgpack_dom_value* %1, %struct.rmsgpack_dom_value** %5, align 8
  %8 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %9 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %10 = icmp eq %struct.rmsgpack_dom_value* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %244

12:                                               ; preds = %2
  %13 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %14 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %17 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %244

21:                                               ; preds = %12
  %22 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %23 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %243 [
    i32 130, label %25
    i32 133, label %26
    i32 132, label %38
    i32 128, label %50
    i32 129, label %62
    i32 134, label %92
    i32 131, label %122
    i32 135, label %195
  ]

25:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %244

26:                                               ; preds = %21
  %27 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %28 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %32 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %30, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
  store i32 %37, i32* %3, align 4
  br label %244

38:                                               ; preds = %21
  %39 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %40 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %44 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %42, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 1
  store i32 %49, i32* %3, align 4
  br label %244

50:                                               ; preds = %21
  %51 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %52 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %56 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %54, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 0, i32 1
  store i32 %61, i32* %3, align 4
  br label %244

62:                                               ; preds = %21
  %63 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %64 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %69 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %67, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %244

75:                                               ; preds = %62
  %76 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %77 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %82 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %87 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @strncmp(i32 %80, i32 %85, i32 %90)
  store i32 %91, i32* %3, align 4
  br label %244

92:                                               ; preds = %21
  %93 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %94 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %99 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %97, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  store i32 1, i32* %3, align 4
  br label %244

105:                                              ; preds = %92
  %106 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %107 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %112 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %117 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @memcmp(i32 %110, i32 %115, i32 %120)
  store i32 %121, i32* %3, align 4
  br label %244

122:                                              ; preds = %21
  %123 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %124 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %129 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %127, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  store i32 1, i32* %3, align 4
  br label %244

135:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %191, %135
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %139 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ult i32 %137, %142
  br i1 %143, label %144, label %194

144:                                              ; preds = %136
  %145 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %146 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %155 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = call i32 @rmsgpack_dom_value_cmp(%struct.rmsgpack_dom_value* %153, %struct.rmsgpack_dom_value* %162)
  store i32 %163, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %144
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %3, align 4
  br label %244

167:                                              ; preds = %144
  %168 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %169 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %178 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = call i32 @rmsgpack_dom_value_cmp(%struct.rmsgpack_dom_value* %176, %struct.rmsgpack_dom_value* %185)
  store i32 %186, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %167
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* %3, align 4
  br label %244

190:                                              ; preds = %167
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %7, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %7, align 4
  br label %136

194:                                              ; preds = %136
  br label %243

195:                                              ; preds = %21
  %196 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %197 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %202 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %200, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %195
  store i32 1, i32* %3, align 4
  br label %244

208:                                              ; preds = %195
  store i32 0, i32* %7, align 4
  br label %209

209:                                              ; preds = %239, %208
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %212 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp ult i32 %210, %215
  br i1 %216, label %217, label %242

217:                                              ; preds = %209
  %218 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %219 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %222, i64 %224
  %226 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %227 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  %230 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %230, i64 %232
  %234 = call i32 @rmsgpack_dom_value_cmp(%struct.rmsgpack_dom_value* %225, %struct.rmsgpack_dom_value* %233)
  store i32 %234, i32* %6, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %217
  %237 = load i32, i32* %6, align 4
  store i32 %237, i32* %3, align 4
  br label %244

238:                                              ; preds = %217
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %7, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %7, align 4
  br label %209

242:                                              ; preds = %209
  br label %243

243:                                              ; preds = %21, %242, %194
  store i32 1, i32* %3, align 4
  br label %244

244:                                              ; preds = %243, %236, %207, %188, %165, %134, %105, %104, %75, %74, %50, %38, %26, %25, %20, %11
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
