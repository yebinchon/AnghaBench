; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_lex.c_icon.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_lex.c_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_15__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }

@cp = common dso_local global i8* null, align 8
@unsignedlong = common dso_local global i8* null, align 8
@tval = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@unsignedtype = common dso_local global %struct.TYPE_15__* null, align 8
@longtype = common dso_local global %struct.TYPE_15__* null, align 8
@inttype = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"overflow in constant `%S'\0A\00", align 1
@token = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (i64, i32, i32)* @icon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @icon(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** @cp, align 8
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 117
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** @cp, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 85
  br i1 %15, label %16, label %28

16:                                               ; preds = %11, %3
  %17 = load i8*, i8** @cp, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 108
  br i1 %21, label %50, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** @cp, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 76
  br i1 %27, label %50, label %28

28:                                               ; preds = %22, %11
  %29 = load i8*, i8** @cp, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 108
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** @cp, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 76
  br i1 %37, label %38, label %55

38:                                               ; preds = %33, %28
  %39 = load i8*, i8** @cp, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 117
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** @cp, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 85
  br i1 %49, label %50, label %55

50:                                               ; preds = %44, %38, %22, %16
  %51 = load i8*, i8** @unsignedlong, align 8
  %52 = bitcast i8* %51 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  %53 = load i8*, i8** @cp, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** @cp, align 8
  br label %177

55:                                               ; preds = %44, %33
  %56 = load i8*, i8** @cp, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 117
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** @cp, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 85
  br i1 %64, label %65, label %88

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedtype, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ugt i64 %69, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %68, %65
  %81 = load i8*, i8** @unsignedlong, align 8
  %82 = bitcast i8* %81 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  br label %85

83:                                               ; preds = %68
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedtype, align 8
  store %struct.TYPE_15__* %84, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i8*, i8** @cp, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8* %87, i8** @cp, align 8
  br label %176

88:                                               ; preds = %60
  %89 = load i8*, i8** @cp, align 8
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 108
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** @cp, align 8
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 76
  br i1 %97, label %98, label %121

98:                                               ; preds = %93, %88
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %4, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longtype, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ugt i64 %102, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %101, %98
  %114 = load i8*, i8** @unsignedlong, align 8
  %115 = bitcast i8* %114 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %115, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  br label %118

116:                                              ; preds = %101
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longtype, align 8
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  br label %118

118:                                              ; preds = %116, %113
  %119 = load i8*, i8** @cp, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  store i8* %120, i8** @cp, align 8
  br label %175

121:                                              ; preds = %93
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* %4, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longtype, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ugt i64 %125, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %124, %121
  %137 = load i8*, i8** @unsignedlong, align 8
  %138 = bitcast i8* %137 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %138, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  br label %174

139:                                              ; preds = %124
  %140 = load i64, i64* %4, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** @inttype, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ugt i64 %140, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %139
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longtype, align 8
  store %struct.TYPE_15__* %152, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  br label %173

153:                                              ; preds = %139
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 10
  br i1 %155, label %156, label %170

156:                                              ; preds = %153
  %157 = load i64, i64* %4, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** @inttype, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ugt i64 %157, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %156
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedtype, align 8
  store %struct.TYPE_15__* %169, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  br label %172

170:                                              ; preds = %156, %153
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** @inttype, align 8
  store %struct.TYPE_15__* %171, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  br label %172

172:                                              ; preds = %170, %168
  br label %173

173:                                              ; preds = %172, %151
  br label %174

174:                                              ; preds = %173, %136
  br label %175

175:                                              ; preds = %174, %118
  br label %176

176:                                              ; preds = %175, %85
  br label %177

177:                                              ; preds = %176, %50
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  switch i32 %180, label %251 [
    i32 129, label %181
    i32 128, label %216
  ]

181:                                              ; preds = %177
  %182 = load i32, i32* %5, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %196, label %184

184:                                              ; preds = %181
  %185 = load i64, i64* %4, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ugt i64 %185, %194
  br i1 %195, label %196, label %213

196:                                              ; preds = %184, %181
  %197 = load i32, i32* @token, align 4
  %198 = load i8*, i8** @cp, align 8
  %199 = load i32, i32* @token, align 4
  %200 = sext i32 %199 to i64
  %201 = sub i64 0, %200
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  %203 = call i32 @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %197, i8* %202)
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  br label %215

213:                                              ; preds = %184
  %214 = load i64, i64* %4, align 8
  store i64 %214, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  br label %215

215:                                              ; preds = %213, %196
  br label %253

216:                                              ; preds = %177
  %217 = load i32, i32* %5, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %231, label %219

219:                                              ; preds = %216
  %220 = load i64, i64* %4, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ugt i64 %220, %229
  br i1 %230, label %231, label %248

231:                                              ; preds = %219, %216
  %232 = load i32, i32* @token, align 4
  %233 = load i8*, i8** @cp, align 8
  %234 = load i32, i32* @token, align 4
  %235 = sext i32 %234 to i64
  %236 = sub i64 0, %235
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  %238 = call i32 @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %232, i8* %237)
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 1), align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 0, i32 0, i32 0, i32 1), align 8
  br label %250

248:                                              ; preds = %219
  %249 = load i64, i64* %4, align 8
  store i64 %249, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @tval, i32 0, i32 0, i32 0, i32 0, i32 1), align 8
  br label %250

250:                                              ; preds = %248, %231
  br label %253

251:                                              ; preds = %177
  %252 = call i32 @assert(i32 0)
  br label %253

253:                                              ; preds = %251, %250, %215
  %254 = call i32 @ppnumber(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  ret %struct.TYPE_24__* @tval
}

declare dso_local i32 @warning(i8*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ppnumber(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
