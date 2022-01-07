; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_load_cb_second_pass.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_load_cb_second_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"cheat\00", align 1
@cheat_manager_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"address_bit_position\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"big_endian\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"cheat_type\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"handler\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"memory_search_size\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"repeat_add_to_address\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"repeat_add_to_value\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"repeat_count\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"rumble_port\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"rumble_primary_duration\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"rumble_primary_strength\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"rumble_secondary_duration\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"rumble_secondary_strength\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"rumble_type\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"rumble_value\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @cheat_manager_load_cb_second_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cheat_manager_load_cb_second_pass(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 5, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* @errno, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strncmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %368

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %43, %14
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sge i32 %28, 48
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sle i32 %36, 57
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %39, 24
  br label %41

41:                                               ; preds = %38, %30, %22, %17
  %42 = phi i1 [ false, %30 ], [ false, %22 ], [ false, %17 ], [ %40, %38 ]
  br i1 %42, label %43, label %55

43:                                               ; preds = %41
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = load i32, i32* %8, align 4
  %50 = sub i32 %49, 5
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %51
  store i8 %48, i8* %52, align 1
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %17

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = sub i32 %56, 5
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %58
  store i8 0, i8* %59, align 1
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %61 = call i64 @strtoul(i8* %60, i32* null, i32 0)
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 0), align 8
  %65 = add i32 %63, %64
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 1), align 4
  %67 = icmp uge i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %368

69:                                               ; preds = %55
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8* %74, i8** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 0), align 8
  %77 = add i32 %75, %76
  store i32 %77, i32* %7, align 4
  %78 = load i8*, i8** %3, align 8
  %79 = call i64 @string_is_equal(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %69
  %82 = load i8*, i8** %4, align 8
  %83 = call i64 @strtoul(i8* %82, i32* null, i32 0)
  %84 = trunc i64 %83 to i32
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 8
  br label %368

90:                                               ; preds = %69
  %91 = load i8*, i8** %3, align 8
  %92 = call i64 @string_is_equal(i8* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i8*, i8** %4, align 8
  %96 = call i64 @strtoul(i8* %95, i32* null, i32 0)
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %99 = load i32, i32* %7, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %97, i32* %102, align 4
  br label %367

103:                                              ; preds = %90
  %104 = load i8*, i8** %3, align 8
  %105 = call i64 @string_is_equal(i8* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = load i8*, i8** %4, align 8
  %109 = call i64 @string_is_equal(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %4, align 8
  %113 = call i64 @string_is_equal(i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i1 [ true, %107 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32 %117, i32* %122, align 8
  br label %366

123:                                              ; preds = %103
  %124 = load i8*, i8** %3, align 8
  %125 = call i64 @string_is_equal(i8* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load i8*, i8** %4, align 8
  %129 = call i64 @strtoul(i8* %128, i32* null, i32 0)
  %130 = trunc i64 %129 to i32
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  store i32 %130, i32* %135, align 4
  br label %365

136:                                              ; preds = %123
  %137 = load i8*, i8** %3, align 8
  %138 = call i64 @string_is_equal(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i8*, i8** %4, align 8
  %142 = call i8* @strdup(i8* %141)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %144 = load i32, i32* %7, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 19
  store i8* %142, i8** %147, align 8
  br label %364

148:                                              ; preds = %136
  %149 = load i8*, i8** %3, align 8
  %150 = call i64 @string_is_equal(i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load i8*, i8** %4, align 8
  %154 = call i8* @strdup(i8* %153)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %156 = load i32, i32* %7, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 18
  store i8* %154, i8** %159, align 8
  br label %363

160:                                              ; preds = %148
  %161 = load i8*, i8** %3, align 8
  %162 = call i64 @string_is_equal(i8* %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %160
  %165 = load i8*, i8** %4, align 8
  %166 = call i64 @string_is_equal(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** %4, align 8
  %170 = call i64 @string_is_equal(i8* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br label %172

172:                                              ; preds = %168, %164
  %173 = phi i1 [ true, %164 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %176 = load i32, i32* %7, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 4
  store i32 %174, i32* %179, align 8
  br label %362

180:                                              ; preds = %160
  %181 = load i8*, i8** %3, align 8
  %182 = call i64 @string_is_equal(i8* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %180
  %185 = load i8*, i8** %4, align 8
  %186 = call i64 @strtoul(i8* %185, i32* null, i32 0)
  %187 = trunc i64 %186 to i32
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %189 = load i32, i32* %7, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 5
  store i32 %187, i32* %192, align 4
  br label %361

193:                                              ; preds = %180
  %194 = load i8*, i8** %3, align 8
  %195 = call i64 @string_is_equal(i8* %194, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %193
  %198 = load i8*, i8** %4, align 8
  %199 = call i64 @strtoul(i8* %198, i32* null, i32 0)
  %200 = trunc i64 %199 to i32
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %202 = load i32, i32* %7, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 6
  store i32 %200, i32* %205, align 8
  br label %360

206:                                              ; preds = %193
  %207 = load i8*, i8** %3, align 8
  %208 = call i64 @string_is_equal(i8* %207, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %206
  %211 = load i8*, i8** %4, align 8
  %212 = call i64 @strtoul(i8* %211, i32* null, i32 0)
  %213 = trunc i64 %212 to i32
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %215 = load i32, i32* %7, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 7
  store i32 %213, i32* %218, align 4
  br label %359

219:                                              ; preds = %206
  %220 = load i8*, i8** %3, align 8
  %221 = call i64 @string_is_equal(i8* %220, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %219
  %224 = load i8*, i8** %4, align 8
  %225 = call i64 @strtoul(i8* %224, i32* null, i32 0)
  %226 = trunc i64 %225 to i32
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %228 = load i32, i32* %7, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 8
  store i32 %226, i32* %231, align 8
  br label %358

232:                                              ; preds = %219
  %233 = load i8*, i8** %3, align 8
  %234 = call i64 @string_is_equal(i8* %233, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %232
  %237 = load i8*, i8** %4, align 8
  %238 = call i64 @strtoul(i8* %237, i32* null, i32 0)
  %239 = trunc i64 %238 to i32
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %241 = load i32, i32* %7, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 9
  store i32 %239, i32* %244, align 4
  br label %357

245:                                              ; preds = %232
  %246 = load i8*, i8** %3, align 8
  %247 = call i64 @string_is_equal(i8* %246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %245
  %250 = load i8*, i8** %4, align 8
  %251 = call i64 @strtoul(i8* %250, i32* null, i32 0)
  %252 = trunc i64 %251 to i32
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %254 = load i32, i32* %7, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 10
  store i32 %252, i32* %257, align 8
  br label %356

258:                                              ; preds = %245
  %259 = load i8*, i8** %3, align 8
  %260 = call i64 @string_is_equal(i8* %259, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %258
  %263 = load i8*, i8** %4, align 8
  %264 = call i64 @strtoul(i8* %263, i32* null, i32 0)
  %265 = trunc i64 %264 to i32
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %267 = load i32, i32* %7, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 11
  store i32 %265, i32* %270, align 4
  br label %355

271:                                              ; preds = %258
  %272 = load i8*, i8** %3, align 8
  %273 = call i64 @string_is_equal(i8* %272, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %271
  %276 = load i8*, i8** %4, align 8
  %277 = call i64 @strtoul(i8* %276, i32* null, i32 0)
  %278 = trunc i64 %277 to i32
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %280 = load i32, i32* %7, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 12
  store i32 %278, i32* %283, align 8
  br label %354

284:                                              ; preds = %271
  %285 = load i8*, i8** %3, align 8
  %286 = call i64 @string_is_equal(i8* %285, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %284
  %289 = load i8*, i8** %4, align 8
  %290 = call i64 @strtoul(i8* %289, i32* null, i32 0)
  %291 = trunc i64 %290 to i32
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %293 = load i32, i32* %7, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 13
  store i32 %291, i32* %296, align 4
  br label %353

297:                                              ; preds = %284
  %298 = load i8*, i8** %3, align 8
  %299 = call i64 @string_is_equal(i8* %298, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %297
  %302 = load i8*, i8** %4, align 8
  %303 = call i64 @strtoul(i8* %302, i32* null, i32 0)
  %304 = trunc i64 %303 to i32
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %306 = load i32, i32* %7, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 14
  store i32 %304, i32* %309, align 8
  br label %352

310:                                              ; preds = %297
  %311 = load i8*, i8** %3, align 8
  %312 = call i64 @string_is_equal(i8* %311, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %323

314:                                              ; preds = %310
  %315 = load i8*, i8** %4, align 8
  %316 = call i64 @strtoul(i8* %315, i32* null, i32 0)
  %317 = trunc i64 %316 to i32
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %319 = load i32, i32* %7, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 15
  store i32 %317, i32* %322, align 4
  br label %351

323:                                              ; preds = %310
  %324 = load i8*, i8** %3, align 8
  %325 = call i64 @string_is_equal(i8* %324, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %323
  %328 = load i8*, i8** %4, align 8
  %329 = call i64 @strtoul(i8* %328, i32* null, i32 0)
  %330 = trunc i64 %329 to i32
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %332 = load i32, i32* %7, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 16
  store i32 %330, i32* %335, align 8
  br label %350

336:                                              ; preds = %323
  %337 = load i8*, i8** %3, align 8
  %338 = call i64 @string_is_equal(i8* %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %349

340:                                              ; preds = %336
  %341 = load i8*, i8** %4, align 8
  %342 = call i64 @strtoul(i8* %341, i32* null, i32 0)
  %343 = trunc i64 %342 to i32
  %344 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %345 = load i32, i32* %7, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 17
  store i32 %343, i32* %348, align 4
  br label %349

349:                                              ; preds = %340, %336
  br label %350

350:                                              ; preds = %349, %327
  br label %351

351:                                              ; preds = %350, %314
  br label %352

352:                                              ; preds = %351, %301
  br label %353

353:                                              ; preds = %352, %288
  br label %354

354:                                              ; preds = %353, %275
  br label %355

355:                                              ; preds = %354, %262
  br label %356

356:                                              ; preds = %355, %249
  br label %357

357:                                              ; preds = %356, %236
  br label %358

358:                                              ; preds = %357, %223
  br label %359

359:                                              ; preds = %358, %210
  br label %360

360:                                              ; preds = %359, %197
  br label %361

361:                                              ; preds = %360, %184
  br label %362

362:                                              ; preds = %361, %172
  br label %363

363:                                              ; preds = %362, %152
  br label %364

364:                                              ; preds = %363, %140
  br label %365

365:                                              ; preds = %364, %127
  br label %366

366:                                              ; preds = %365, %115
  br label %367

367:                                              ; preds = %366, %94
  br label %368

368:                                              ; preds = %13, %68, %367, %81
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
