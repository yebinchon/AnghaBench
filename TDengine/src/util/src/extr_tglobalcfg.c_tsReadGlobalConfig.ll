; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsReadGlobalConfig.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsReadGlobalConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"%s/taos.cfg\00", align 1
@configDir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@tsPrivateIp = common dso_local global i64* null, align 8
@tsPublicIp = common dso_local global i64* null, align 8
@tsInternalIp = common dso_local global i64* null, align 8
@tsLocalIp = common dso_local global i64* null, align 8
@tsMasterIp = common dso_local global i64* null, align 8
@tsSecondIp = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"timezone\00", align 1
@TSDB_CFG_CSTATUS_FILE = common dso_local global i64 0, align 8
@tsNumOfCores = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"privateIp is null\00", align 1
@tscEmbedded = common dso_local global i64 0, align 8
@tsVersion = common dso_local global i32 0, align 4
@version = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsReadGlobalConfig() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 16
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = call i32 (...) @tsInitGlobalConfig()
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %16 = load i8*, i8** @configDir, align 8
  %17 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  br label %76

23:                                               ; preds = %0
  store i8* null, i8** %3, align 8
  br label %24

24:                                               ; preds = %57, %56, %42, %23
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @feof(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %71

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @tfree(i8* %30)
  store i8* null, i8** %5, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %7, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @getline(i8** %3, i64* %7, i32* %32)
  %34 = load i8*, i8** %3, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %71

37:                                               ; preds = %29
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @paGetToken(i8* %38, i8** %4, i32* %8)
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %24

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = call i32 @paGetToken(i8* %52, i8** %5, i32* %9)
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %24

57:                                               ; preds = %43
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = call i32 @paGetToken(i8* %66, i8** %6, i32* %10)
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @tsReadConfigOption(i8* %68, i8* %69)
  br label %24

71:                                               ; preds = %36, %24
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 @tfree(i8* %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @fclose(i32* %74)
  br label %76

76:                                               ; preds = %71, %22
  %77 = call i32 (...) @tsReadGlobalConfigSpec()
  %78 = load i64*, i64** @tsPrivateIp, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i64*, i64** @tsPrivateIp, align 8
  %84 = call i32 @taosGetPrivateIp(i64* %83)
  br label %85

85:                                               ; preds = %82, %76
  %86 = load i64*, i64** @tsPublicIp, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i64*, i64** @tsPublicIp, align 8
  %92 = load i64*, i64** @tsPrivateIp, align 8
  %93 = call i32 @strcpy(i64* %91, i64* %92)
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i64*, i64** @tsInternalIp, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i64*, i64** @tsInternalIp, align 8
  %101 = load i64*, i64** @tsPrivateIp, align 8
  %102 = call i32 @strcpy(i64* %100, i64* %101)
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i64*, i64** @tsLocalIp, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i64*, i64** @tsLocalIp, align 8
  %110 = load i64*, i64** @tsPrivateIp, align 8
  %111 = call i32 @strcpy(i64* %109, i64* %110)
  br label %112

112:                                              ; preds = %108, %103
  %113 = load i64*, i64** @tsMasterIp, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i64*, i64** @tsMasterIp, align 8
  %119 = load i64*, i64** @tsPrivateIp, align 8
  %120 = call i32 @strcpy(i64* %118, i64* %119)
  br label %121

121:                                              ; preds = %117, %112
  %122 = load i64*, i64** @tsSecondIp, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i64*, i64** @tsSecondIp, align 8
  %128 = load i64*, i64** @tsMasterIp, align 8
  %129 = call i32 @strcpy(i64* %127, i64* %128)
  br label %130

130:                                              ; preds = %126, %121
  %131 = call i32 (...) @taosGetSystemInfo()
  %132 = call i32 (...) @tsSetLocale()
  %133 = call %struct.TYPE_3__* @tsGetConfigOption(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_3__* %133, %struct.TYPE_3__** %12, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %135 = icmp ne %struct.TYPE_3__* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %130
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @TSDB_CFG_CSTATUS_FILE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = call i32 (...) @tsSetTimeZone()
  br label %144

144:                                              ; preds = %142, %136, %130
  %145 = load i32, i32* @tsNumOfCores, align 4
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 1, i32* @tsNumOfCores, align 4
  br label %148

148:                                              ; preds = %147, %144
  %149 = load i64*, i64** @tsPrivateIp, align 8
  %150 = call i64 @strlen(i64* %149)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 @pError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %209

154:                                              ; preds = %148
  %155 = load i64, i64* @tscEmbedded, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i64*, i64** @tsLocalIp, align 8
  %159 = load i64*, i64** @tsPrivateIp, align 8
  %160 = call i32 @strcpy(i64* %158, i64* %159)
  br label %161

161:                                              ; preds = %157, %154
  store i32 0, i32* @tsVersion, align 4
  store i32 0, i32* %13, align 4
  br label %162

162:                                              ; preds = %203, %161
  %163 = load i32, i32* %13, align 4
  %164 = icmp slt i32 %163, 10
  br i1 %164, label %165, label %206

165:                                              ; preds = %162
  %166 = load i8*, i8** @version, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp sge i32 %171, 48
  br i1 %172, label %173, label %192

173:                                              ; preds = %165
  %174 = load i8*, i8** @version, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp sle i32 %179, 57
  br i1 %180, label %181, label %192

181:                                              ; preds = %173
  %182 = load i32, i32* @tsVersion, align 4
  %183 = mul nsw i32 %182, 10
  %184 = load i8*, i8** @version, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = sub nsw i32 %189, 48
  %191 = add nsw i32 %183, %190
  store i32 %191, i32* @tsVersion, align 4
  br label %202

192:                                              ; preds = %173, %165
  %193 = load i8*, i8** @version, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  br label %206

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %201, %181
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %162

206:                                              ; preds = %200, %162
  %207 = load i32, i32* @tsVersion, align 4
  %208 = mul nsw i32 10, %207
  store i32 %208, i32* @tsVersion, align 4
  store i32 1, i32* %1, align 4
  br label %209

209:                                              ; preds = %206, %152
  %210 = load i32, i32* %1, align 4
  ret i32 %210
}

declare dso_local i32 @tsInitGlobalConfig(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @tfree(i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @paGetToken(i8*, i8**, i32*) #1

declare dso_local i32 @tsReadConfigOption(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @tsReadGlobalConfigSpec(...) #1

declare dso_local i32 @taosGetPrivateIp(i64*) #1

declare dso_local i32 @strcpy(i64*, i64*) #1

declare dso_local i32 @taosGetSystemInfo(...) #1

declare dso_local i32 @tsSetLocale(...) #1

declare dso_local %struct.TYPE_3__* @tsGetConfigOption(i8*) #1

declare dso_local i32 @tsSetTimeZone(...) #1

declare dso_local i64 @strlen(i64*) #1

declare dso_local i32 @pError(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
