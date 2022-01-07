; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_database_info.c_database_cursor_iterate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_database_info.c_database_cursor_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.rmsgpack_dom_value = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__, i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value }

@RDT_MAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"publisher\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"developer\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rom_name\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"genre\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"franchise\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"bbfc_rating\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"esrb_rating\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"elspa_rating\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"cero_rating\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"pegi_rating\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"enhancement_hw\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"edge_review\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"edge_rating\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"edge_issue\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"famitsu_rating\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"tgdb_rating\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"releasemonth\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"releaseyear\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"rumble\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"coop\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"analog\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"crc\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Unknown key: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*)* @database_cursor_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @database_cursor_iterate(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rmsgpack_dom_value, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rmsgpack_dom_value*, align 8
  %10 = alloca %struct.rmsgpack_dom_value*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i8* null, i8** %8, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @libretrodb_cursor_read_item(i32* %12, %struct.rmsgpack_dom_value* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %517

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %7, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RDT_MAP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @rmsgpack_dom_value_free(%struct.rmsgpack_dom_value* %7)
  store i32 1, i32* %3, align 4
  br label %517

23:                                               ; preds = %16
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  store i32 -1, i32* %29, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %512, %23
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %7, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %31, %35
  br i1 %36, label %37, label %515

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %7, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store %struct.rmsgpack_dom_value* %45, %struct.rmsgpack_dom_value** %9, align 8
  %46 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %7, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store %struct.rmsgpack_dom_value* %53, %struct.rmsgpack_dom_value** %10, align 8
  store i8* null, i8** %11, align 8
  %54 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %9, align 8
  %55 = icmp ne %struct.rmsgpack_dom_value* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %37
  %57 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %58 = icmp ne %struct.rmsgpack_dom_value* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56, %37
  br label %512

60:                                               ; preds = %56
  %61 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %62 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %11, align 8
  %66 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %9, align 8
  %67 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %8, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i64 @string_is_equal(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %60
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @string_is_empty(i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %11, align 8
  %80 = call i8* @strdup(i8* %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 29
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %78, %74
  br label %511

84:                                               ; preds = %60
  %85 = load i8*, i8** %8, align 8
  %86 = call i64 @string_is_equal(i8* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @string_is_empty(i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @string_split(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 28
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %92, %88
  br label %510

98:                                               ; preds = %84
  %99 = load i8*, i8** %8, align 8
  %100 = call i64 @string_is_equal(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @string_is_empty(i8* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = load i8*, i8** %11, align 8
  %108 = call i8* @strdup(i8* %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 27
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %106, %102
  br label %509

112:                                              ; preds = %98
  %113 = load i8*, i8** %8, align 8
  %114 = call i64 @string_is_equal(i8* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @string_is_empty(i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = load i8*, i8** %11, align 8
  %122 = call i8* @strdup(i8* %121)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 26
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %120, %116
  br label %508

126:                                              ; preds = %112
  %127 = load i8*, i8** %8, align 8
  %128 = call i64 @string_is_equal(i8* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @string_is_empty(i8* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = load i8*, i8** %11, align 8
  %136 = call i8* @strdup(i8* %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 25
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %134, %130
  br label %507

140:                                              ; preds = %126
  %141 = load i8*, i8** %8, align 8
  %142 = call i64 @string_is_equal(i8* %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 @string_is_empty(i8* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  %149 = load i8*, i8** %11, align 8
  %150 = call i8* @strdup(i8* %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 24
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %148, %144
  br label %506

154:                                              ; preds = %140
  %155 = load i8*, i8** %8, align 8
  %156 = call i64 @string_is_equal(i8* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load i8*, i8** %11, align 8
  %160 = call i32 @string_is_empty(i8* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %158
  %163 = load i8*, i8** %11, align 8
  %164 = call i8* @strdup(i8* %163)
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 23
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %162, %158
  br label %505

168:                                              ; preds = %154
  %169 = load i8*, i8** %8, align 8
  %170 = call i64 @string_is_equal(i8* %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %168
  %173 = load i8*, i8** %11, align 8
  %174 = call i32 @string_is_empty(i8* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %172
  %177 = load i8*, i8** %11, align 8
  %178 = call i8* @strdup(i8* %177)
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 22
  store i8* %178, i8** %180, align 8
  br label %181

181:                                              ; preds = %176, %172
  br label %504

182:                                              ; preds = %168
  %183 = load i8*, i8** %8, align 8
  %184 = call i64 @string_is_equal(i8* %183, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %182
  %187 = load i8*, i8** %11, align 8
  %188 = call i32 @string_is_empty(i8* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %186
  %191 = load i8*, i8** %11, align 8
  %192 = call i8* @strdup(i8* %191)
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 21
  store i8* %192, i8** %194, align 8
  br label %195

195:                                              ; preds = %190, %186
  br label %503

196:                                              ; preds = %182
  %197 = load i8*, i8** %8, align 8
  %198 = call i64 @string_is_equal(i8* %197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %196
  %201 = load i8*, i8** %11, align 8
  %202 = call i32 @string_is_empty(i8* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  %205 = load i8*, i8** %11, align 8
  %206 = call i8* @strdup(i8* %205)
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 20
  store i8* %206, i8** %208, align 8
  br label %209

209:                                              ; preds = %204, %200
  br label %502

210:                                              ; preds = %196
  %211 = load i8*, i8** %8, align 8
  %212 = call i64 @string_is_equal(i8* %211, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %210
  %215 = load i8*, i8** %11, align 8
  %216 = call i32 @string_is_empty(i8* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %214
  %219 = load i8*, i8** %11, align 8
  %220 = call i8* @strdup(i8* %219)
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 19
  store i8* %220, i8** %222, align 8
  br label %223

223:                                              ; preds = %218, %214
  br label %501

224:                                              ; preds = %210
  %225 = load i8*, i8** %8, align 8
  %226 = call i64 @string_is_equal(i8* %225, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %224
  %229 = load i8*, i8** %11, align 8
  %230 = call i32 @string_is_empty(i8* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %228
  %233 = load i8*, i8** %11, align 8
  %234 = call i8* @strdup(i8* %233)
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 18
  store i8* %234, i8** %236, align 8
  br label %237

237:                                              ; preds = %232, %228
  br label %500

238:                                              ; preds = %224
  %239 = load i8*, i8** %8, align 8
  %240 = call i64 @string_is_equal(i8* %239, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %238
  %243 = load i8*, i8** %11, align 8
  %244 = call i32 @string_is_empty(i8* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %242
  %247 = load i8*, i8** %11, align 8
  %248 = call i8* @strdup(i8* %247)
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 17
  store i8* %248, i8** %250, align 8
  br label %251

251:                                              ; preds = %246, %242
  br label %499

252:                                              ; preds = %238
  %253 = load i8*, i8** %8, align 8
  %254 = call i64 @string_is_equal(i8* %253, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %252
  %257 = load i8*, i8** %11, align 8
  %258 = call i32 @string_is_empty(i8* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8
  %262 = call i8* @strdup(i8* %261)
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 16
  store i8* %262, i8** %264, align 8
  br label %265

265:                                              ; preds = %260, %256
  br label %498

266:                                              ; preds = %252
  %267 = load i8*, i8** %8, align 8
  %268 = call i64 @string_is_equal(i8* %267, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %280

270:                                              ; preds = %266
  %271 = load i8*, i8** %11, align 8
  %272 = call i32 @string_is_empty(i8* %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %270
  %275 = load i8*, i8** %11, align 8
  %276 = call i8* @strdup(i8* %275)
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 15
  store i8* %276, i8** %278, align 8
  br label %279

279:                                              ; preds = %274, %270
  br label %497

280:                                              ; preds = %266
  %281 = load i8*, i8** %8, align 8
  %282 = call i64 @string_is_equal(i8* %281, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %280
  %285 = load i8*, i8** %11, align 8
  %286 = call i32 @string_is_empty(i8* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %284
  %289 = load i8*, i8** %11, align 8
  %290 = call i8* @strdup(i8* %289)
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 14
  store i8* %290, i8** %292, align 8
  br label %293

293:                                              ; preds = %288, %284
  br label %496

294:                                              ; preds = %280
  %295 = load i8*, i8** %8, align 8
  %296 = call i64 @string_is_equal(i8* %295, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %294
  %299 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %300 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = trunc i64 %302 to i32
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 4
  br label %495

306:                                              ; preds = %294
  %307 = load i8*, i8** %8, align 8
  %308 = call i64 @string_is_equal(i8* %307, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %306
  %311 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %312 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = trunc i64 %314 to i32
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 4
  store i32 %315, i32* %317, align 8
  br label %494

318:                                              ; preds = %306
  %319 = load i8*, i8** %8, align 8
  %320 = call i64 @string_is_equal(i8* %319, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %318
  %323 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %324 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = trunc i64 %326 to i32
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 5
  store i32 %327, i32* %329, align 4
  br label %493

330:                                              ; preds = %318
  %331 = load i8*, i8** %8, align 8
  %332 = call i64 @string_is_equal(i8* %331, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %342

334:                                              ; preds = %330
  %335 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %336 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 6
  store i32 %339, i32* %341, align 8
  br label %492

342:                                              ; preds = %330
  %343 = load i8*, i8** %8, align 8
  %344 = call i64 @string_is_equal(i8* %343, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %342
  %347 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %348 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = trunc i64 %350 to i32
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 7
  store i32 %351, i32* %353, align 4
  br label %491

354:                                              ; preds = %342
  %355 = load i8*, i8** %8, align 8
  %356 = call i64 @string_is_equal(i8* %355, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %354
  %359 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %360 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = trunc i64 %362 to i32
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 8
  store i32 %363, i32* %365, align 8
  br label %490

366:                                              ; preds = %354
  %367 = load i8*, i8** %8, align 8
  %368 = call i64 @string_is_equal(i8* %367, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %378

370:                                              ; preds = %366
  %371 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %372 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = trunc i64 %374 to i32
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 9
  store i32 %375, i32* %377, align 4
  br label %489

378:                                              ; preds = %366
  %379 = load i8*, i8** %8, align 8
  %380 = call i64 @string_is_equal(i8* %379, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %390

382:                                              ; preds = %378
  %383 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %384 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = trunc i64 %386 to i32
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 1
  store i32 %387, i32* %389, align 4
  br label %488

390:                                              ; preds = %378
  %391 = load i8*, i8** %8, align 8
  %392 = call i64 @string_is_equal(i8* %391, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %402

394:                                              ; preds = %390
  %395 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %396 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = trunc i64 %398 to i32
  %400 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 2
  store i32 %399, i32* %401, align 8
  br label %487

402:                                              ; preds = %390
  %403 = load i8*, i8** %8, align 8
  %404 = call i64 @string_is_equal(i8* %403, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %414

406:                                              ; preds = %402
  %407 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %408 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = trunc i64 %410 to i32
  %412 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 0
  store i32 %411, i32* %413, align 8
  br label %486

414:                                              ; preds = %402
  %415 = load i8*, i8** %8, align 8
  %416 = call i64 @string_is_equal(i8* %415, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %426

418:                                              ; preds = %414
  %419 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %420 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = trunc i64 %422 to i32
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 10
  store i32 %423, i32* %425, align 8
  br label %485

426:                                              ; preds = %414
  %427 = load i8*, i8** %8, align 8
  %428 = call i64 @string_is_equal(i8* %427, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %441

430:                                              ; preds = %426
  %431 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %432 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = inttoptr i64 %435 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = call i32 @swap_if_little32(i32 %437)
  %439 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %439, i32 0, i32 13
  store i32 %438, i32* %440, align 8
  br label %484

441:                                              ; preds = %426
  %442 = load i8*, i8** %8, align 8
  %443 = call i64 @string_is_equal(i8* %442, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %460

445:                                              ; preds = %441
  %446 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %447 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = inttoptr i64 %450 to i32*
  %452 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %453 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = call i8* @bin_to_hex_alloc(i32* %451, i32 %456)
  %458 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %459 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %458, i32 0, i32 12
  store i8* %457, i8** %459, align 8
  br label %483

460:                                              ; preds = %441
  %461 = load i8*, i8** %8, align 8
  %462 = call i64 @string_is_equal(i8* %461, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %479

464:                                              ; preds = %460
  %465 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %466 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = inttoptr i64 %469 to i32*
  %471 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  %472 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = call i8* @bin_to_hex_alloc(i32* %470, i32 %475)
  %477 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %477, i32 0, i32 11
  store i8* %476, i8** %478, align 8
  br label %482

479:                                              ; preds = %460
  %480 = load i8*, i8** %8, align 8
  %481 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* %480)
  br label %482

482:                                              ; preds = %479, %464
  br label %483

483:                                              ; preds = %482, %445
  br label %484

484:                                              ; preds = %483, %430
  br label %485

485:                                              ; preds = %484, %418
  br label %486

486:                                              ; preds = %485, %406
  br label %487

487:                                              ; preds = %486, %394
  br label %488

488:                                              ; preds = %487, %382
  br label %489

489:                                              ; preds = %488, %370
  br label %490

490:                                              ; preds = %489, %358
  br label %491

491:                                              ; preds = %490, %346
  br label %492

492:                                              ; preds = %491, %334
  br label %493

493:                                              ; preds = %492, %322
  br label %494

494:                                              ; preds = %493, %310
  br label %495

495:                                              ; preds = %494, %298
  br label %496

496:                                              ; preds = %495, %293
  br label %497

497:                                              ; preds = %496, %279
  br label %498

498:                                              ; preds = %497, %265
  br label %499

499:                                              ; preds = %498, %251
  br label %500

500:                                              ; preds = %499, %237
  br label %501

501:                                              ; preds = %500, %223
  br label %502

502:                                              ; preds = %501, %209
  br label %503

503:                                              ; preds = %502, %195
  br label %504

504:                                              ; preds = %503, %181
  br label %505

505:                                              ; preds = %504, %167
  br label %506

506:                                              ; preds = %505, %153
  br label %507

507:                                              ; preds = %506, %139
  br label %508

508:                                              ; preds = %507, %125
  br label %509

509:                                              ; preds = %508, %111
  br label %510

510:                                              ; preds = %509, %97
  br label %511

511:                                              ; preds = %510, %83
  br label %512

512:                                              ; preds = %511, %59
  %513 = load i32, i32* %6, align 4
  %514 = add i32 %513, 1
  store i32 %514, i32* %6, align 4
  br label %30

515:                                              ; preds = %30
  %516 = call i32 @rmsgpack_dom_value_free(%struct.rmsgpack_dom_value* %7)
  store i32 0, i32* %3, align 4
  br label %517

517:                                              ; preds = %515, %21, %15
  %518 = load i32, i32* %3, align 4
  ret i32 %518
}

declare dso_local i64 @libretrodb_cursor_read_item(i32*, %struct.rmsgpack_dom_value*) #1

declare dso_local i32 @rmsgpack_dom_value_free(%struct.rmsgpack_dom_value*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @string_split(i8*, i8*) #1

declare dso_local i32 @swap_if_little32(i32) #1

declare dso_local i8* @bin_to_hex_alloc(i32*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
