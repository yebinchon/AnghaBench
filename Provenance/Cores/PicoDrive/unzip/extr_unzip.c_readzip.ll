; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/unzip/extr_unzip.c_readzip.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/unzip/extr_unzip.c_readzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zipent = type { i32, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8* }
%struct.TYPE_3__ = type { i64, i64, %struct.zipent, i32*, i32 }

@ZIPCENSIG = common dso_local global i32 0, align 4
@ZIPCVER = common dso_local global i32 0, align 4
@ZIPCOS = common dso_local global i32 0, align 4
@ZIPCVXT = common dso_local global i32 0, align 4
@ZIPCEXOS = common dso_local global i32 0, align 4
@ZIPCFLG = common dso_local global i32 0, align 4
@ZIPCMTHD = common dso_local global i32 0, align 4
@ZIPCTIM = common dso_local global i32 0, align 4
@ZIPCDAT = common dso_local global i32 0, align 4
@ZIPCCRC = common dso_local global i32 0, align 4
@ZIPCSIZ = common dso_local global i32 0, align 4
@ZIPCUNC = common dso_local global i32 0, align 4
@ZIPCFNL = common dso_local global i32 0, align 4
@ZIPCXTL = common dso_local global i32 0, align 4
@ZIPCCML = common dso_local global i32 0, align 4
@ZIPDSK = common dso_local global i32 0, align 4
@ZIPINT = common dso_local global i32 0, align 4
@ZIPEXT = common dso_local global i32 0, align 4
@ZIPOFST = common dso_local global i32 0, align 4
@ZIPCFN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Invalid filename length in directory\00", align 1
@ERROR_CORRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zipent* @readzip(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.zipent*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.zipent* null, %struct.zipent** %2, align 8
  br label %370

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* @ZIPCENSIG, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i8* @read_dword(i32* %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.zipent, %struct.zipent* %25, i32 0, i32 19
  store i8* %23, i8** %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* @ZIPCVER, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.zipent, %struct.zipent* %39, i32 0, i32 18
  store i32 %37, i32* %40, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* @ZIPCOS, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.zipent, %struct.zipent* %53, i32 0, i32 17
  store i32 %51, i32* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* @ZIPCVXT, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.zipent, %struct.zipent* %67, i32 0, i32 16
  store i32 %65, i32* %68, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* @ZIPCEXOS, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.zipent, %struct.zipent* %81, i32 0, i32 15
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* @ZIPCFLG, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = call i8* @read_word(i32* %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.zipent, %struct.zipent* %95, i32 0, i32 14
  store i8* %93, i8** %96, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* @ZIPCMTHD, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i8* @read_word(i32* %106)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.zipent, %struct.zipent* %109, i32 0, i32 13
  store i8* %107, i8** %110, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* @ZIPCTIM, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = call i8* @read_word(i32* %120)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.zipent, %struct.zipent* %123, i32 0, i32 12
  store i8* %121, i8** %124, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* @ZIPCDAT, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i8* @read_word(i32* %134)
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.zipent, %struct.zipent* %137, i32 0, i32 11
  store i8* %135, i8** %138, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* @ZIPCCRC, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = call i8* @read_dword(i32* %148)
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.zipent, %struct.zipent* %151, i32 0, i32 10
  store i8* %149, i8** %152, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* @ZIPCSIZ, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = call i8* @read_dword(i32* %162)
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.zipent, %struct.zipent* %165, i32 0, i32 9
  store i8* %163, i8** %166, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* @ZIPCUNC, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = call i8* @read_dword(i32* %176)
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.zipent, %struct.zipent* %179, i32 0, i32 8
  store i8* %177, i8** %180, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* @ZIPCFNL, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = call i8* @read_word(i32* %190)
  %192 = ptrtoint i8* %191 to i32
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.zipent, %struct.zipent* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* @ZIPCXTL, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = call i8* @read_word(i32* %205)
  %207 = ptrtoint i8* %206 to i64
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.zipent, %struct.zipent* %209, i32 0, i32 1
  store i64 %207, i64* %210, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* @ZIPCCML, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = call i8* @read_word(i32* %220)
  %222 = ptrtoint i8* %221 to i64
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.zipent, %struct.zipent* %224, i32 0, i32 2
  store i64 %222, i64* %225, align 8
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* @ZIPDSK, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = call i8* @read_word(i32* %235)
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.zipent, %struct.zipent* %238, i32 0, i32 7
  store i8* %236, i8** %239, align 8
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* @ZIPINT, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = call i8* @read_word(i32* %249)
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.zipent, %struct.zipent* %252, i32 0, i32 6
  store i8* %250, i8** %253, align 8
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = load i32, i32* @ZIPEXT, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = call i8* @read_dword(i32* %263)
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.zipent, %struct.zipent* %266, i32 0, i32 5
  store i8* %264, i8** %267, align 8
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 3
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = load i32, i32* @ZIPOFST, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = call i8* @read_dword(i32* %277)
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.zipent, %struct.zipent* %280, i32 0, i32 4
  store i8* %278, i8** %281, align 8
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @ZIPCFN, align 8
  %286 = add nsw i64 %284, %285
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.zipent, %struct.zipent* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %286, %291
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = icmp sgt i64 %292, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %12
  %298 = load i32, i32* @ERROR_CORRUPT, align 4
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @errormsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %298, i32 %301)
  store %struct.zipent* null, %struct.zipent** %2, align 8
  br label %370

303:                                              ; preds = %12
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.zipent, %struct.zipent* %305, i32 0, i32 3
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @free(i8* %307)
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.zipent, %struct.zipent* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = add nsw i32 %312, 1
  %314 = call i64 @malloc(i32 %313)
  %315 = inttoptr i64 %314 to i8*
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.zipent, %struct.zipent* %317, i32 0, i32 3
  store i8* %315, i8** %318, align 8
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.zipent, %struct.zipent* %320, i32 0, i32 3
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 3
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds i32, i32* %325, i64 %328
  %330 = load i64, i64* @ZIPCFN, align 8
  %331 = getelementptr inbounds i32, i32* %329, i64 %330
  %332 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.zipent, %struct.zipent* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @memcpy(i8* %322, i32* %331, i32 %335)
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.zipent, %struct.zipent* %338, i32 0, i32 3
  %340 = load i8*, i8** %339, align 8
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.zipent, %struct.zipent* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %340, i64 %345
  store i8 0, i8* %346, align 1
  %347 = load i64, i64* @ZIPCFN, align 8
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.zipent, %struct.zipent* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = add nsw i64 %347, %352
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.zipent, %struct.zipent* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = add nsw i64 %353, %357
  %359 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.zipent, %struct.zipent* %360, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = add nsw i64 %358, %362
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = add nsw i64 %366, %363
  store i64 %367, i64* %365, align 8
  %368 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %368, i32 0, i32 2
  store %struct.zipent* %369, %struct.zipent** %2, align 8
  br label %370

370:                                              ; preds = %303, %297, %11
  %371 = load %struct.zipent*, %struct.zipent** %2, align 8
  ret %struct.zipent* %371
}

declare dso_local i8* @read_dword(i32*) #1

declare dso_local i8* @read_word(i32*) #1

declare dso_local i32 @errormsg(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
