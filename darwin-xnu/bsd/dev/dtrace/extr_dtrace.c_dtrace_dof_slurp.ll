; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dof_slurp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dof_slurp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64*, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64 }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@DOF_ID_MAG0 = common dso_local global i64 0, align 8
@DOF_MAG_STRING = common dso_local global i32 0, align 4
@DOF_MAG_STRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DOF magic string mismatch\00", align 1
@DOF_ID_MODEL = common dso_local global i64 0, align 8
@DOF_MODEL_ILP32 = common dso_local global i64 0, align 8
@DOF_MODEL_LP64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"DOF has invalid data model\00", align 1
@DOF_ID_ENCODING = common dso_local global i64 0, align 8
@DOF_ENCODE_NATIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"DOF encoding mismatch\00", align 1
@DOF_ID_VERSION = common dso_local global i64 0, align 8
@DOF_VERSION_3 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"DOF version mismatch\00", align 1
@DOF_ID_DIFVERS = common dso_local global i64 0, align 8
@DIF_VERSION_2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"DOF uses unsupported instruction set\00", align 1
@DOF_ID_DIFIREG = common dso_local global i64 0, align 8
@DIF_DIR_NREGS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"DOF uses too many integer registers\00", align 1
@DOF_ID_DIFTREG = common dso_local global i64 0, align 8
@DIF_DTR_NREGS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"DOF uses too many tuple registers\00", align 1
@DOF_ID_PAD = common dso_local global i64 0, align 8
@DOF_ID_SIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"DOF has invalid ident byte set\00", align 1
@DOF_FL_VALID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"DOF has invalid flag bits set\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"invalid section header size\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"truncated section headers\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"misaligned section headers\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"misaligned section size\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"illegal sections for enabling\00", align 1
@DOF_SECF_LOAD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"bad section alignment\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"misaligned section\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"corrupt section header\00", align 1
@DOF_SECT_STRTAB = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"non-terminating string table\00", align 1
@DOF_SECT_ECBDESC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*, i32**, i64, i32)* @dtrace_dof_slurp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_dof_slurp(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32** %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = ptrtoint %struct.TYPE_8__* %25 to i64
  store i64 %26, i64* %16, align 8
  %27 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %28 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %31, 40
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @DOF_ID_MAG0, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i32, i32* @DOF_MAG_STRING, align 4
  %41 = load i32, i32* @DOF_MAG_STRLEN, align 4
  %42 = call i64 @bcmp(i64* %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %6
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

47:                                               ; preds = %6
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @DOF_ID_MODEL, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DOF_MODEL_ILP32, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %47
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @DOF_ID_MODEL, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DOF_MODEL_LP64, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

68:                                               ; preds = %56, %47
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @DOF_ID_ENCODING, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DOF_ENCODE_NATIVE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

80:                                               ; preds = %68
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @DOF_ID_VERSION, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DOF_VERSION_3, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %91 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

92:                                               ; preds = %80
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* @DOF_ID_DIFVERS, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DIF_VERSION_2, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

104:                                              ; preds = %92
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @DOF_ID_DIFIREG, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DIF_DIR_NREGS, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

116:                                              ; preds = %104
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @DOF_ID_DIFTREG, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DIF_DTR_NREGS, align 8
  %124 = icmp sgt i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %127 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %126, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

128:                                              ; preds = %116
  %129 = load i64, i64* @DOF_ID_PAD, align 8
  store i64 %129, i64* %19, align 8
  br label %130

130:                                              ; preds = %146, %128
  %131 = load i64, i64* %19, align 8
  %132 = load i64, i64* @DOF_ID_SIZE, align 8
  %133 = icmp ult i64 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %130
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* %19, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %144 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %143, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %19, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %19, align 8
  br label %130

149:                                              ; preds = %130
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @DOF_FL_VALID, align 4
  %154 = xor i32 %153, -1
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %159 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

160:                                              ; preds = %149
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp ult i64 %164, 24
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %168 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %167, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

169:                                              ; preds = %160
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = mul nsw i64 %172, %176
  store i64 %177, i64* %15, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %14, align 8
  %182 = icmp sgt i64 %180, %181
  br i1 %182, label %195, label %183

183:                                              ; preds = %169
  %184 = load i64, i64* %15, align 8
  %185 = load i64, i64* %14, align 8
  %186 = icmp sgt i64 %184, %185
  br i1 %186, label %195, label %187

187:                                              ; preds = %183
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %15, align 8
  %192 = add nsw i64 %190, %191
  %193 = load i64, i64* %14, align 8
  %194 = icmp sgt i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %187, %183, %169
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %197 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

198:                                              ; preds = %187
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 5
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @IS_P2ALIGNED(i64 %201, i32 8)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %198
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %206 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %205, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

207:                                              ; preds = %198
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = call i32 @IS_P2ALIGNED(i64 %211, i32 8)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %207
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %216 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %215, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

217:                                              ; preds = %207
  store i64 0, i64* %19, align 8
  br label %218

218:                                              ; preds = %335, %217
  %219 = load i64, i64* %19, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = icmp ult i64 %219, %222
  br i1 %223, label %224, label %338

224:                                              ; preds = %218
  %225 = load i64, i64* %16, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %225, %228
  %230 = load i64, i64* %19, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = mul i64 %230, %234
  %236 = add i64 %229, %235
  %237 = inttoptr i64 %236 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %237, %struct.TYPE_7__** %20, align 8
  %238 = load i32, i32* %13, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %224
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  switch i32 %243, label %247 [
    i32 128, label %244
    i32 130, label %244
    i32 131, label %244
    i32 129, label %244
  ]

244:                                              ; preds = %240, %240, %240, %240
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %246 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %245, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

247:                                              ; preds = %240
  br label %248

248:                                              ; preds = %247, %224
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @DOF_SECF_LOAD, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %248
  br label %335

256:                                              ; preds = %248
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = sub nsw i32 %262, 1
  %264 = and i32 %259, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %256
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %268 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %267, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

269:                                              ; preds = %256
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = sub nsw i32 %275, 1
  %277 = and i32 %272, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %269
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %281 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

282:                                              ; preds = %269
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = load i64, i64* %14, align 8
  %288 = icmp sgt i64 %286, %287
  br i1 %288, label %306, label %289

289:                                              ; preds = %282
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 4
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* %14, align 8
  %294 = icmp sgt i64 %292, %293
  br i1 %294, label %306, label %295

295:                                              ; preds = %289
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 4
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %299, %302
  %304 = load i64, i64* %14, align 8
  %305 = icmp sgt i64 %303, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %295, %289, %282
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %308 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %307, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

309:                                              ; preds = %295
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @DOF_SECT_STRTAB, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %334

315:                                              ; preds = %309
  %316 = load i64, i64* %16, align 8
  %317 = inttoptr i64 %316 to i8*
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %317, i64 %321
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 4
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds i8, i8* %322, i64 %325
  %327 = getelementptr inbounds i8, i8* %326, i64 -1
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %315
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %333 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %332, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %394

334:                                              ; preds = %315, %309
  br label %335

335:                                              ; preds = %334, %255
  %336 = load i64, i64* %19, align 8
  %337 = add i64 %336, 1
  store i64 %337, i64* %19, align 8
  br label %218

338:                                              ; preds = %218
  %339 = load i32**, i32*** %11, align 8
  %340 = load i32*, i32** %339, align 8
  store i32* %340, i32** %18, align 8
  %341 = icmp eq i32* %340, null
  br i1 %341, label %342, label %346

342:                                              ; preds = %338
  %343 = load i32*, i32** %9, align 8
  %344 = call i32* @dtrace_enabling_create(i32* %343)
  %345 = load i32**, i32*** %11, align 8
  store i32* %344, i32** %345, align 8
  store i32* %344, i32** %18, align 8
  br label %346

346:                                              ; preds = %342, %338
  store i64 0, i64* %19, align 8
  br label %347

347:                                              ; preds = %390, %346
  %348 = load i64, i64* %19, align 8
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 4
  %351 = load i64, i64* %350, align 8
  %352 = icmp ult i64 %348, %351
  br i1 %352, label %353, label %393

353:                                              ; preds = %347
  %354 = load i64, i64* %16, align 8
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 5
  %357 = load i64, i64* %356, align 8
  %358 = add i64 %354, %357
  %359 = load i64, i64* %19, align 8
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = mul i64 %359, %363
  %365 = add i64 %358, %364
  %366 = inttoptr i64 %365 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %366, %struct.TYPE_7__** %21, align 8
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = sext i32 %369 to i64
  %371 = load i64, i64* @DOF_SECT_ECBDESC, align 8
  %372 = icmp ne i64 %370, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %353
  br label %390

374:                                              ; preds = %353
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %377 = load i32*, i32** %9, align 8
  %378 = load i32*, i32** %10, align 8
  %379 = call i32* @dtrace_dof_ecbdesc(%struct.TYPE_8__* %375, %struct.TYPE_7__* %376, i32* %377, i32* %378)
  store i32* %379, i32** %17, align 8
  %380 = load i32*, i32** %17, align 8
  %381 = icmp eq i32* %380, null
  br i1 %381, label %382, label %386

382:                                              ; preds = %374
  %383 = load i32*, i32** %18, align 8
  %384 = call i32 @dtrace_enabling_destroy(i32* %383)
  %385 = load i32**, i32*** %11, align 8
  store i32* null, i32** %385, align 8
  store i32 -1, i32* %7, align 4
  br label %394

386:                                              ; preds = %374
  %387 = load i32*, i32** %18, align 8
  %388 = load i32*, i32** %17, align 8
  %389 = call i32 @dtrace_enabling_add(i32* %387, i32* %388)
  br label %390

390:                                              ; preds = %386, %373
  %391 = load i64, i64* %19, align 8
  %392 = add i64 %391, 1
  store i64 %392, i64* %19, align 8
  br label %347

393:                                              ; preds = %347
  store i32 0, i32* %7, align 4
  br label %394

394:                                              ; preds = %393, %382, %331, %306, %279, %266, %244, %214, %204, %195, %166, %157, %142, %125, %113, %101, %89, %77, %65, %44
  %395 = load i32, i32* %7, align 4
  ret i32 %395
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @bcmp(i64*, i32, i32) #1

declare dso_local i32 @dtrace_dof_error(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @IS_P2ALIGNED(i64, i32) #1

declare dso_local i32* @dtrace_enabling_create(i32*) #1

declare dso_local i32* @dtrace_dof_ecbdesc(%struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @dtrace_enabling_destroy(i32*) #1

declare dso_local i32 @dtrace_enabling_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
