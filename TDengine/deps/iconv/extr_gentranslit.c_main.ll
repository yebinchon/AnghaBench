; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gentranslit.c_main.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gentranslit.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"/*\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c" * Copyright (C) 1999-2003 Free Software Foundation, Inc.\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c" * This file is part of the GNU LIBICONV Library.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" *\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c" * The GNU LIBICONV Library is free software; you can redistribute it\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c" * and/or modify it under the terms of the GNU Library General Public\0A\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c" * License as published by the Free Software Foundation; either version 2\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c" * of the License, or (at your option) any later version.\0A\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c" * The GNU LIBICONV Library is distributed in the hope that it will be\0A\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c" * useful, but WITHOUT ANY WARRANTY; without even the implied warranty of\0A\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c" * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c" * Library General Public License for more details.\0A\00", align 1
@.str.12 = private unnamed_addr constant [70 x i8] c" * You should have received a copy of the GNU Library General Public\0A\00", align 1
@.str.13 = private unnamed_addr constant [75 x i8] c" * License along with the GNU LIBICONV Library; see the file COPYING.LIB.\0A\00", align 1
@.str.14 = private unnamed_addr constant [77 x i8] c" * If not, write to the Free Software Foundation, Inc., 51 Franklin Street,\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c" * Fifth Floor, Boston, MA 02110-1301, USA.\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c" * Transliteration table\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"static const unsigned int translit_data[%d] = {\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"\0A %3d,\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"'\\'',\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"'\\\\',\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c" '%c',\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"0x%02X,\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"0x%04X,\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%02x_%d\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"static const short translit_page%s[%d] = {\0A\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"  /* 0x%04x */\0A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c" %4d,\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c" /* 0x%02x-0x%02x */\0A\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"#define translit_index(wc) \\\0A  (\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"wc == 0x%04x ? %d\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"wc < 0x%04x\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"wc >= 0x%04x && wc < 0x%04x\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c" ? translit_page%s[wc\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"-0x%04x\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c" : \\\0A   \00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"-1)\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1048576 x i32], align 16
  %7 = alloca [1114112 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4352 x i32], align 16
  %15 = alloca [139264 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca [8192 x %struct.anon], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %2
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.12, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.13, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.14, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %62, %30
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 1114112
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [1114112 x i32], [1114112 x i32]* %7, i64 0, i64 %60
  store i32 -1, i32* %61, align 4
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %55

65:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %237, %90, %65
  %67 = load i32, i32* @stdin, align 4
  %68 = call i32 @getc(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @EOF, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %238

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 35
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %87, %76
  %78 = load i32, i32* @stdin, align 4
  %79 = call i32 @getc(i32 %78)
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @EOF, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 10
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i1 [ true, %80 ], [ %86, %84 ]
  %89 = xor i1 %88, true
  br i1 %89, label %77, label %90

90:                                               ; preds = %87
  br label %66

91:                                               ; preds = %73
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @stdin, align 4
  %94 = call i32 @ungetc(i32 %92, i32 %93)
  %95 = call i32 @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32* %10)
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %91
  %100 = load i32, i32* @stdin, align 4
  %101 = call i32 @getc(i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 9
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 @exit(i32 1) #3
  unreachable

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %197, %106
  %108 = load i32, i32* @stdin, align 4
  %109 = call i32 @getc(i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @EOF, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %114, 10
  br i1 %115, label %116, label %118

116:                                              ; preds = %113, %107
  %117 = call i32 @exit(i32 1) #3
  unreachable

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %119, 9
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %203

122:                                              ; preds = %118
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [1114112 x i32], [1114112 x i32]* %7, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [1114112 x i32], [1114112 x i32]* %7, i64 0, i64 %131
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %6, i64 0, i64 %135
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %128, %122
  %138 = load i32, i32* %9, align 4
  %139 = icmp sge i32 %138, 128
  br i1 %139, label %140, label %197

140:                                              ; preds = %137
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %141, 192
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = call i32 @exit(i32 1) #3
  unreachable

145:                                              ; preds = %140
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 224
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %166

149:                                              ; preds = %145
  %150 = load i32, i32* %9, align 4
  %151 = icmp slt i32 %150, 240
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %164

153:                                              ; preds = %149
  %154 = load i32, i32* %9, align 4
  %155 = icmp slt i32 %154, 248
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %162

157:                                              ; preds = %153
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %158, 252
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 5, i32 6
  br label %162

162:                                              ; preds = %157, %156
  %163 = phi i32 [ 4, %156 ], [ %161, %157 ]
  br label %164

164:                                              ; preds = %162, %152
  %165 = phi i32 [ 3, %152 ], [ %163, %162 ]
  br label %166

166:                                              ; preds = %164, %148
  %167 = phi i32 [ 2, %148 ], [ %165, %164 ]
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = sub i32 8, %168
  %170 = shl i32 1, %169
  %171 = sub nsw i32 %170, 1
  %172 = load i32, i32* %9, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %188, %166
  %175 = load i32, i32* %11, align 4
  %176 = add i32 %175, -1
  store i32 %176, i32* %11, align 4
  %177 = icmp ugt i32 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %174
  %179 = load i32, i32* @stdin, align 4
  %180 = call i32 @getc(i32 %179)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp sge i32 %181, 128
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i32, i32* %12, align 4
  %185 = icmp slt i32 %184, 192
  br i1 %185, label %188, label %186

186:                                              ; preds = %183, %178
  %187 = call i32 @exit(i32 1) #3
  unreachable

188:                                              ; preds = %183
  %189 = load i32, i32* %9, align 4
  %190 = shl i32 %189, 6
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %12, align 4
  %192 = and i32 %191, 63
  %193 = load i32, i32* %9, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %9, align 4
  br label %174

195:                                              ; preds = %174
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196, %137
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %6, i64 0, i64 %201
  store i32 %198, i32* %202, align 4
  br label %107

203:                                              ; preds = %121
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [1114112 x i32], [1114112 x i32]* %7, i64 0, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = icmp sge i32 %207, 0
  br i1 %208, label %209, label %223

209:                                              ; preds = %203
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [1114112 x i32], [1114112 x i32]* %7, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %210, %214
  %216 = sub nsw i32 %215, 1
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [1114112 x i32], [1114112 x i32]* %7, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %6, i64 0, i64 %221
  store i32 %216, i32* %222, align 4
  br label %223

223:                                              ; preds = %209, %203
  br label %224

224:                                              ; preds = %234, %223
  %225 = load i32, i32* @stdin, align 4
  %226 = call i32 @getc(i32 %225)
  store i32 %226, i32* %9, align 4
  br label %227

227:                                              ; preds = %224
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* @EOF, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %234, label %231

231:                                              ; preds = %227
  %232 = load i32, i32* %9, align 4
  %233 = icmp eq i32 %232, 10
  br label %234

234:                                              ; preds = %231, %227
  %235 = phi i1 [ true, %227 ], [ %233, %231 ]
  %236 = xor i1 %235, true
  br i1 %236, label %224, label %237

237:                                              ; preds = %234
  br label %66

238:                                              ; preds = %72
  %239 = load i32, i32* %8, align 4
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0), i32 %239)
  store i32 0, i32* %13, align 4
  br label %241

241:                                              ; preds = %308, %238
  %242 = load i32, i32* %13, align 4
  %243 = load i32, i32* %8, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %311

245:                                              ; preds = %241
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %6, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp ult i32 %249, 32
  br i1 %250, label %251, label %257

251:                                              ; preds = %245
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %6, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32 %255)
  br label %307

257:                                              ; preds = %245
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %6, i64 0, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %261, 39
  br i1 %262, label %263, label %265

263:                                              ; preds = %257
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  br label %306

265:                                              ; preds = %257
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %6, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, 92
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  br label %305

273:                                              ; preds = %265
  %274 = load i32, i32* %13, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %6, i64 0, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = icmp ult i32 %277, 127
  br i1 %278, label %279, label %285

279:                                              ; preds = %273
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %6, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 %283)
  br label %304

285:                                              ; preds = %273
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %6, i64 0, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = icmp ult i32 %289, 256
  br i1 %290, label %291, label %297

291:                                              ; preds = %285
  %292 = load i32, i32* %13, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %6, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %295)
  br label %303

297:                                              ; preds = %285
  %298 = load i32, i32* %13, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %6, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32 %301)
  br label %303

303:                                              ; preds = %297, %291
  br label %304

304:                                              ; preds = %303, %279
  br label %305

305:                                              ; preds = %304, %271
  br label %306

306:                                              ; preds = %305, %263
  br label %307

307:                                              ; preds = %306, %251
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %13, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %13, align 4
  br label %241

311:                                              ; preds = %241
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  br label %314

314:                                              ; preds = %321, %311
  %315 = load i32, i32* %20, align 4
  %316 = icmp slt i32 %315, 4352
  br i1 %316, label %317, label %324

317:                                              ; preds = %314
  %318 = load i32, i32* %20, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [4352 x i32], [4352 x i32]* %14, i64 0, i64 %319
  store i32 0, i32* %320, align 4
  br label %321

321:                                              ; preds = %317
  %322 = load i32, i32* %20, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %20, align 4
  br label %314

324:                                              ; preds = %314
  store i32 0, i32* %19, align 4
  br label %325

325:                                              ; preds = %340, %324
  %326 = load i32, i32* %19, align 4
  %327 = icmp slt i32 %326, 1114112
  br i1 %327, label %328, label %343

328:                                              ; preds = %325
  %329 = load i32, i32* %19, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [1114112 x i32], [1114112 x i32]* %7, i64 0, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = icmp sge i32 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %328
  %335 = load i32, i32* %19, align 4
  %336 = ashr i32 %335, 8
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [4352 x i32], [4352 x i32]* %14, i64 0, i64 %337
  store i32 1, i32* %338, align 4
  br label %339

339:                                              ; preds = %334, %328
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %19, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %19, align 4
  br label %325

343:                                              ; preds = %325
  store i32 0, i32* %21, align 4
  br label %344

344:                                              ; preds = %378, %343
  %345 = load i32, i32* %21, align 4
  %346 = icmp slt i32 %345, 139264
  br i1 %346, label %347, label %381

347:                                              ; preds = %344
  store i32 1, i32* %24, align 4
  store i32 0, i32* %22, align 4
  br label %348

348:                                              ; preds = %363, %347
  %349 = load i32, i32* %22, align 4
  %350 = icmp slt i32 %349, 8
  br i1 %350, label %351, label %366

351:                                              ; preds = %348
  %352 = load i32, i32* %21, align 4
  %353 = mul nsw i32 8, %352
  %354 = load i32, i32* %22, align 4
  %355 = add nsw i32 %353, %354
  store i32 %355, i32* %19, align 4
  %356 = load i32, i32* %19, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [1114112 x i32], [1114112 x i32]* %7, i64 0, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = icmp sge i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %351
  store i32 0, i32* %24, align 4
  br label %362

362:                                              ; preds = %361, %351
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %22, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %22, align 4
  br label %348

366:                                              ; preds = %348
  %367 = load i32, i32* %24, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %366
  %370 = load i32, i32* %21, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [139264 x i32], [139264 x i32]* %15, i64 0, i64 %371
  store i32 -1, i32* %372, align 4
  br label %377

373:                                              ; preds = %366
  %374 = load i32, i32* %21, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [139264 x i32], [139264 x i32]* %15, i64 0, i64 %375
  store i32 0, i32* %376, align 4
  br label %377

377:                                              ; preds = %373, %369
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %21, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %21, align 4
  br label %344

381:                                              ; preds = %344
  store i32 0, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %382

382:                                              ; preds = %460, %381
  %383 = load i32, i32* %21, align 4
  %384 = icmp slt i32 %383, 139264
  br i1 %384, label %385, label %463

385:                                              ; preds = %382
  %386 = load i32, i32* %21, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [139264 x i32], [139264 x i32]* %15, i64 0, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = icmp sge i32 %389, 0
  br i1 %390, label %391, label %459

391:                                              ; preds = %385
  %392 = load i32, i32* %16, align 4
  %393 = icmp sgt i32 %392, 0
  br i1 %393, label %394, label %439

394:                                              ; preds = %391
  %395 = load i32, i32* %21, align 4
  %396 = icmp sgt i32 %395, 0
  br i1 %396, label %397, label %406

397:                                              ; preds = %394
  %398 = load i32, i32* %21, align 4
  %399 = sub nsw i32 %398, 1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [139264 x i32], [139264 x i32]* %15, i64 0, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* %16, align 4
  %404 = sub nsw i32 %403, 1
  %405 = icmp eq i32 %402, %404
  br i1 %405, label %427, label %406

406:                                              ; preds = %397, %394
  %407 = load i32, i32* %16, align 4
  %408 = sub nsw i32 %407, 1
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %409
  %411 = getelementptr inbounds %struct.anon, %struct.anon* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = ashr i32 %412, 5
  %414 = load i32, i32* %21, align 4
  %415 = ashr i32 %414, 5
  %416 = icmp eq i32 %413, %415
  br i1 %416, label %417, label %439

417:                                              ; preds = %406
  %418 = load i32, i32* %21, align 4
  %419 = load i32, i32* %16, align 4
  %420 = sub nsw i32 %419, 1
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %421
  %423 = getelementptr inbounds %struct.anon, %struct.anon* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = sub nsw i32 %418, %424
  %426 = icmp sle i32 %425, 8
  br i1 %426, label %427, label %439

427:                                              ; preds = %417, %397
  %428 = load i32, i32* %16, align 4
  %429 = sub nsw i32 %428, 1
  %430 = load i32, i32* %21, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [139264 x i32], [139264 x i32]* %15, i64 0, i64 %431
  store i32 %429, i32* %432, align 4
  %433 = load i32, i32* %21, align 4
  %434 = load i32, i32* %16, align 4
  %435 = sub nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %436
  %438 = getelementptr inbounds %struct.anon, %struct.anon* %437, i32 0, i32 1
  store i32 %433, i32* %438, align 4
  br label %458

439:                                              ; preds = %417, %406, %391
  %440 = load i32, i32* %16, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %16, align 4
  %442 = load i32, i32* %16, align 4
  %443 = sub nsw i32 %442, 1
  %444 = load i32, i32* %21, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [139264 x i32], [139264 x i32]* %15, i64 0, i64 %445
  store i32 %443, i32* %446, align 4
  %447 = load i32, i32* %21, align 4
  %448 = load i32, i32* %16, align 4
  %449 = sub nsw i32 %448, 1
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %450
  %452 = getelementptr inbounds %struct.anon, %struct.anon* %451, i32 0, i32 1
  store i32 %447, i32* %452, align 4
  %453 = load i32, i32* %16, align 4
  %454 = sub nsw i32 %453, 1
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %455
  %457 = getelementptr inbounds %struct.anon, %struct.anon* %456, i32 0, i32 0
  store i32 %447, i32* %457, align 8
  br label %458

458:                                              ; preds = %439, %427
  br label %459

459:                                              ; preds = %458, %385
  br label %460

460:                                              ; preds = %459
  %461 = load i32, i32* %21, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %21, align 4
  br label %382

463:                                              ; preds = %382
  store i32 0, i32* %23, align 4
  br label %464

464:                                              ; preds = %509, %463
  %465 = load i32, i32* %23, align 4
  %466 = load i32, i32* %16, align 4
  %467 = icmp slt i32 %465, %466
  br i1 %467, label %468, label %512

468:                                              ; preds = %464
  %469 = load i32, i32* %23, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %470
  %472 = getelementptr inbounds %struct.anon, %struct.anon* %471, i32 0, i32 2
  store i32 0, i32* %472, align 8
  %473 = load i32, i32* %23, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %474
  %476 = getelementptr inbounds %struct.anon, %struct.anon* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = mul nsw i32 8, %477
  store i32 %478, i32* %21, align 4
  %479 = load i32, i32* %23, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %480
  %482 = getelementptr inbounds %struct.anon, %struct.anon* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = add nsw i32 %483, 1
  %485 = mul nsw i32 8, %484
  store i32 %485, i32* %22, align 4
  %486 = load i32, i32* %21, align 4
  store i32 %486, i32* %19, align 4
  br label %487

487:                                              ; preds = %505, %468
  %488 = load i32, i32* %19, align 4
  %489 = load i32, i32* %22, align 4
  %490 = icmp slt i32 %488, %489
  br i1 %490, label %491, label %508

491:                                              ; preds = %487
  %492 = load i32, i32* %19, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [1114112 x i32], [1114112 x i32]* %7, i64 0, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = icmp sge i32 %495, 0
  br i1 %496, label %497, label %504

497:                                              ; preds = %491
  %498 = load i32, i32* %23, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %499
  %501 = getelementptr inbounds %struct.anon, %struct.anon* %500, i32 0, i32 2
  %502 = load i32, i32* %501, align 8
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %501, align 8
  br label %504

504:                                              ; preds = %497, %491
  br label %505

505:                                              ; preds = %504
  %506 = load i32, i32* %19, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %19, align 4
  br label %487

508:                                              ; preds = %487
  br label %509

509:                                              ; preds = %508
  %510 = load i32, i32* %23, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %23, align 4
  br label %464

512:                                              ; preds = %464
  store i32 0, i32* %23, align 4
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %513

513:                                              ; preds = %565, %512
  %514 = load i32, i32* %23, align 4
  %515 = load i32, i32* %16, align 4
  %516 = icmp slt i32 %514, %515
  br i1 %516, label %517, label %568

517:                                              ; preds = %513
  %518 = load i32, i32* %23, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %519
  %521 = getelementptr inbounds %struct.anon, %struct.anon* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 8
  %523 = icmp sgt i32 %522, 1
  br i1 %523, label %524, label %559

524:                                              ; preds = %517
  %525 = load i32, i32* %20, align 4
  %526 = load i32, i32* %23, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %527
  %529 = getelementptr inbounds %struct.anon, %struct.anon* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 8
  %531 = ashr i32 %530, 5
  %532 = icmp eq i32 %525, %531
  br i1 %532, label %533, label %541

533:                                              ; preds = %524
  %534 = call i64 @malloc(i32 6)
  %535 = inttoptr i64 %534 to i8*
  store i8* %535, i8** %25, align 8
  %536 = load i8*, i8** %25, align 8
  %537 = load i32, i32* %20, align 4
  %538 = load i32, i32* %18, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %18, align 4
  %540 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %536, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i32 %537, i32 %539)
  br label %553

541:                                              ; preds = %524
  %542 = load i32, i32* %23, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %543
  %545 = getelementptr inbounds %struct.anon, %struct.anon* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = ashr i32 %546, 5
  store i32 %547, i32* %20, align 4
  %548 = call i64 @malloc(i32 3)
  %549 = inttoptr i64 %548 to i8*
  store i8* %549, i8** %25, align 8
  %550 = load i8*, i8** %25, align 8
  %551 = load i32, i32* %20, align 4
  %552 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %550, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 %551)
  br label %553

553:                                              ; preds = %541, %533
  %554 = load i8*, i8** %25, align 8
  %555 = load i32, i32* %23, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %556
  %558 = getelementptr inbounds %struct.anon, %struct.anon* %557, i32 0, i32 3
  store i8* %554, i8** %558, align 8
  br label %564

559:                                              ; preds = %517
  %560 = load i32, i32* %23, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %561
  %563 = getelementptr inbounds %struct.anon, %struct.anon* %562, i32 0, i32 3
  store i8* null, i8** %563, align 8
  br label %564

564:                                              ; preds = %559, %553
  br label %565

565:                                              ; preds = %564
  %566 = load i32, i32* %23, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %23, align 4
  br label %513

568:                                              ; preds = %513
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %569

569:                                              ; preds = %662, %568
  %570 = load i32, i32* %23, align 4
  %571 = load i32, i32* %16, align 4
  %572 = icmp slt i32 %570, %571
  br i1 %572, label %573, label %665

573:                                              ; preds = %569
  %574 = load i32, i32* %23, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %575
  %577 = getelementptr inbounds %struct.anon, %struct.anon* %576, i32 0, i32 2
  %578 = load i32, i32* %577, align 8
  %579 = icmp sgt i32 %578, 1
  br i1 %579, label %580, label %661

580:                                              ; preds = %573
  store i32 0, i32* %20, align 4
  %581 = load i32, i32* %23, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %582
  %584 = getelementptr inbounds %struct.anon, %struct.anon* %583, i32 0, i32 3
  %585 = load i8*, i8** %584, align 8
  %586 = load i32, i32* %23, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %587
  %589 = getelementptr inbounds %struct.anon, %struct.anon* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* %23, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %592
  %594 = getelementptr inbounds %struct.anon, %struct.anon* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 8
  %596 = sub nsw i32 %590, %595
  %597 = add nsw i32 %596, 1
  %598 = mul nsw i32 8, %597
  %599 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i64 0, i64 0), i8* %585, i32 %598)
  %600 = load i32, i32* %23, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %601
  %603 = getelementptr inbounds %struct.anon, %struct.anon* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 8
  store i32 %604, i32* %21, align 4
  br label %605

605:                                              ; preds = %656, %580
  %606 = load i32, i32* %21, align 4
  %607 = load i32, i32* %23, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %608
  %610 = getelementptr inbounds %struct.anon, %struct.anon* %609, i32 0, i32 1
  %611 = load i32, i32* %610, align 4
  %612 = icmp sle i32 %606, %611
  br i1 %612, label %613, label %659

613:                                              ; preds = %605
  %614 = load i32, i32* %21, align 4
  %615 = srem i32 %614, 32
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %629

617:                                              ; preds = %613
  %618 = load i32, i32* %21, align 4
  %619 = load i32, i32* %23, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %620
  %622 = getelementptr inbounds %struct.anon, %struct.anon* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 8
  %624 = icmp sgt i32 %618, %623
  br i1 %624, label %625, label %629

625:                                              ; preds = %617
  %626 = load i32, i32* %21, align 4
  %627 = mul nsw i32 8, %626
  %628 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32 %627)
  br label %629

629:                                              ; preds = %625, %617, %613
  %630 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  store i32 0, i32* %22, align 4
  br label %631

631:                                              ; preds = %644, %629
  %632 = load i32, i32* %22, align 4
  %633 = icmp slt i32 %632, 8
  br i1 %633, label %634, label %647

634:                                              ; preds = %631
  %635 = load i32, i32* %21, align 4
  %636 = mul nsw i32 8, %635
  %637 = load i32, i32* %22, align 4
  %638 = add nsw i32 %636, %637
  store i32 %638, i32* %19, align 4
  %639 = load i32, i32* %19, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [1114112 x i32], [1114112 x i32]* %7, i64 0, i64 %640
  %642 = load i32, i32* %641, align 4
  %643 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i32 %642)
  br label %644

644:                                              ; preds = %634
  %645 = load i32, i32* %22, align 4
  %646 = add nsw i32 %645, 1
  store i32 %646, i32* %22, align 4
  br label %631

647:                                              ; preds = %631
  %648 = load i32, i32* %21, align 4
  %649 = srem i32 %648, 32
  %650 = mul nsw i32 8, %649
  %651 = load i32, i32* %21, align 4
  %652 = srem i32 %651, 32
  %653 = mul nsw i32 8, %652
  %654 = add nsw i32 %653, 7
  %655 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), i32 %650, i32 %654)
  br label %656

656:                                              ; preds = %647
  %657 = load i32, i32* %21, align 4
  %658 = add nsw i32 %657, 1
  store i32 %658, i32* %21, align 4
  br label %605

659:                                              ; preds = %605
  %660 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0))
  br label %661

661:                                              ; preds = %659, %573
  br label %662

662:                                              ; preds = %661
  %663 = load i32, i32* %23, align 4
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %23, align 4
  br label %569

665:                                              ; preds = %569
  %666 = load i32, i32* %20, align 4
  %667 = icmp sge i32 %666, 0
  br i1 %667, label %668, label %670

668:                                              ; preds = %665
  %669 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %670

670:                                              ; preds = %668, %665
  %671 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %672

672:                                              ; preds = %821, %670
  %673 = load i32, i32* %21, align 4
  %674 = icmp slt i32 %673, 139264
  br i1 %674, label %675, label %823

675:                                              ; preds = %672
  %676 = load i32, i32* %21, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds [139264 x i32], [139264 x i32]* %15, i64 0, i64 %677
  %679 = load i32, i32* %678, align 4
  store i32 %679, i32* %23, align 4
  %680 = load i32, i32* %21, align 4
  store i32 %680, i32* %22, align 4
  br label %681

681:                                              ; preds = %694, %675
  %682 = load i32, i32* %22, align 4
  %683 = icmp slt i32 %682, 139264
  br i1 %683, label %684, label %691

684:                                              ; preds = %681
  %685 = load i32, i32* %22, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds [139264 x i32], [139264 x i32]* %15, i64 0, i64 %686
  %688 = load i32, i32* %687, align 4
  %689 = load i32, i32* %23, align 4
  %690 = icmp eq i32 %688, %689
  br label %691

691:                                              ; preds = %684, %681
  %692 = phi i1 [ false, %681 ], [ %690, %684 ]
  br i1 %692, label %693, label %697

693:                                              ; preds = %691
  br label %694

694:                                              ; preds = %693
  %695 = load i32, i32* %22, align 4
  %696 = add nsw i32 %695, 1
  store i32 %696, i32* %22, align 4
  br label %681

697:                                              ; preds = %691
  %698 = load i32, i32* %23, align 4
  %699 = icmp sge i32 %698, 0
  br i1 %699, label %700, label %728

700:                                              ; preds = %697
  %701 = load i32, i32* %21, align 4
  %702 = load i32, i32* %23, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %703
  %705 = getelementptr inbounds %struct.anon, %struct.anon* %704, i32 0, i32 0
  %706 = load i32, i32* %705, align 8
  %707 = icmp ne i32 %701, %706
  br i1 %707, label %708, label %710

708:                                              ; preds = %700
  %709 = call i32 (...) @abort() #3
  unreachable

710:                                              ; preds = %700
  %711 = load i32, i32* %22, align 4
  %712 = load i32, i32* %23, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %713
  %715 = getelementptr inbounds %struct.anon, %struct.anon* %714, i32 0, i32 1
  %716 = load i32, i32* %715, align 4
  %717 = add nsw i32 %716, 1
  %718 = icmp sgt i32 %711, %717
  br i1 %718, label %719, label %721

719:                                              ; preds = %710
  %720 = call i32 (...) @abort() #3
  unreachable

721:                                              ; preds = %710
  %722 = load i32, i32* %23, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %723
  %725 = getelementptr inbounds %struct.anon, %struct.anon* %724, i32 0, i32 1
  %726 = load i32, i32* %725, align 4
  %727 = add nsw i32 %726, 1
  store i32 %727, i32* %22, align 4
  br label %728

728:                                              ; preds = %721, %697
  %729 = load i32, i32* %23, align 4
  %730 = icmp eq i32 %729, -1
  br i1 %730, label %731, label %732

731:                                              ; preds = %728
  br label %821

732:                                              ; preds = %728
  %733 = load i32, i32* %23, align 4
  %734 = icmp sge i32 %733, 0
  br i1 %734, label %735, label %744

735:                                              ; preds = %732
  %736 = load i32, i32* %23, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %737
  %739 = getelementptr inbounds %struct.anon, %struct.anon* %738, i32 0, i32 2
  %740 = load i32, i32* %739, align 8
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %742, label %744

742:                                              ; preds = %735
  %743 = call i32 (...) @abort() #3
  unreachable

744:                                              ; preds = %735, %732
  %745 = load i32, i32* %23, align 4
  %746 = icmp sge i32 %745, 0
  br i1 %746, label %747, label %787

747:                                              ; preds = %744
  %748 = load i32, i32* %23, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %749
  %751 = getelementptr inbounds %struct.anon, %struct.anon* %750, i32 0, i32 2
  %752 = load i32, i32* %751, align 8
  %753 = icmp eq i32 %752, 1
  br i1 %753, label %754, label %787

754:                                              ; preds = %747
  %755 = load i32, i32* %22, align 4
  %756 = load i32, i32* %21, align 4
  %757 = add nsw i32 %756, 1
  %758 = icmp ne i32 %755, %757
  br i1 %758, label %759, label %761

759:                                              ; preds = %754
  %760 = call i32 (...) @abort() #3
  unreachable

761:                                              ; preds = %754
  %762 = load i32, i32* %21, align 4
  %763 = mul nsw i32 8, %762
  store i32 %763, i32* %19, align 4
  br label %764

764:                                              ; preds = %783, %761
  %765 = load i32, i32* %19, align 4
  %766 = load i32, i32* %22, align 4
  %767 = mul nsw i32 8, %766
  %768 = icmp slt i32 %765, %767
  br i1 %768, label %769, label %786

769:                                              ; preds = %764
  %770 = load i32, i32* %19, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds [1114112 x i32], [1114112 x i32]* %7, i64 0, i64 %771
  %773 = load i32, i32* %772, align 4
  %774 = icmp sge i32 %773, 0
  br i1 %774, label %775, label %782

775:                                              ; preds = %769
  %776 = load i32, i32* %19, align 4
  %777 = load i32, i32* %19, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds [1114112 x i32], [1114112 x i32]* %7, i64 0, i64 %778
  %780 = load i32, i32* %779, align 4
  %781 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i32 %776, i32 %780)
  br label %786

782:                                              ; preds = %769
  br label %783

783:                                              ; preds = %782
  %784 = load i32, i32* %19, align 4
  %785 = add nsw i32 %784, 1
  store i32 %785, i32* %19, align 4
  br label %764

786:                                              ; preds = %775, %764
  br label %819

787:                                              ; preds = %747, %744
  %788 = load i32, i32* %21, align 4
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %794

790:                                              ; preds = %787
  %791 = load i32, i32* %22, align 4
  %792 = mul nsw i32 8, %791
  %793 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i32 %792)
  br label %800

794:                                              ; preds = %787
  %795 = load i32, i32* %21, align 4
  %796 = mul nsw i32 8, %795
  %797 = load i32, i32* %22, align 4
  %798 = mul nsw i32 8, %797
  %799 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0), i32 %796, i32 %798)
  br label %800

800:                                              ; preds = %794, %790
  %801 = load i32, i32* %23, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %802
  %804 = getelementptr inbounds %struct.anon, %struct.anon* %803, i32 0, i32 3
  %805 = load i8*, i8** %804, align 8
  %806 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0), i8* %805)
  %807 = load i32, i32* %23, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds [8192 x %struct.anon], [8192 x %struct.anon]* %17, i64 0, i64 %808
  %810 = getelementptr inbounds %struct.anon, %struct.anon* %809, i32 0, i32 0
  %811 = load i32, i32* %810, align 8
  %812 = icmp sgt i32 %811, 0
  br i1 %812, label %813, label %817

813:                                              ; preds = %800
  %814 = load i32, i32* %21, align 4
  %815 = mul nsw i32 8, %814
  %816 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i32 %815)
  br label %817

817:                                              ; preds = %813, %800
  %818 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  br label %819

819:                                              ; preds = %817, %786
  %820 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0))
  br label %821

821:                                              ; preds = %819, %731
  %822 = load i32, i32* %22, align 4
  store i32 %822, i32* %21, align 4
  br label %672

823:                                              ; preds = %672
  %824 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0))
  %825 = load i32, i32* @stdout, align 4
  %826 = call i64 @ferror(i32 %825)
  %827 = icmp ne i64 %826, 0
  br i1 %827, label %832, label %828

828:                                              ; preds = %823
  %829 = load i32, i32* @stdout, align 4
  %830 = call i64 @fclose(i32 %829)
  %831 = icmp ne i64 %830, 0
  br i1 %831, label %832, label %834

832:                                              ; preds = %828, %823
  %833 = call i32 @exit(i32 1) #3
  unreachable

834:                                              ; preds = %828
  %835 = call i32 @exit(i32 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @getc(i32) #2

declare dso_local i32 @ungetc(i32, i32) #2

declare dso_local i32 @scanf(i8*, i32*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i64 @ferror(i32) #2

declare dso_local i64 @fclose(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
