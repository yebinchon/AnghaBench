; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_f_fdisk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_f_fdisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLUSTER_SIZE = common dso_local global i32 0, align 4
@STA_NOINIT = common dso_local global i32 0, align 4
@FR_NOT_READY = common dso_local global i32 0, align 4
@STA_PROTECT = common dso_local global i32 0, align 4
@FR_WRITE_PROTECTED = common dso_local global i32 0, align 4
@GET_SECTOR_COUNT = common dso_local global i32 0, align 4
@FR_DISK_ERR = common dso_local global i32 0, align 4
@FR_NOT_ENOUGH_CORE = common dso_local global i32 0, align 4
@SUPPORTED_FLASH_SIZE = common dso_local global i32 0, align 4
@FF_MAX_SS = common dso_local global i32 0, align 4
@MBR_Table = common dso_local global i32 0, align 4
@FR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SZ_PTE = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@CTRL_SYNC = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_fdisk(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %18, align 8
  %27 = load i32, i32* @CLUSTER_SIZE, align 4
  store i32 %27, i32* %23, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @disk_initialize(i32 %28)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = load i32, i32* @STA_NOINIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @FR_NOT_READY, align 4
  store i32 %35, i32* %4, align 4
  br label %230

36:                                               ; preds = %3
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* @STA_PROTECT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @FR_WRITE_PROTECTED, align 4
  store i32 %42, i32* %4, align 4
  br label %230

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @GET_SECTOR_COUNT, align 4
  %46 = call i64 @disk_ioctl(i32 %44, i32 %45, i32* %20)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @FR_DISK_ERR, align 4
  store i32 %49, i32* %4, align 4
  br label %230

50:                                               ; preds = %43
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %18, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @FR_NOT_ENOUGH_CORE, align 4
  store i32 %56, i32* %4, align 4
  br label %230

57:                                               ; preds = %50
  store i32 16, i32* %9, align 4
  br label %58

58:                                               ; preds = %71, %57
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 256
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sdiv i32 %62, %63
  %65 = load i32, i32* %23, align 4
  %66 = sdiv i32 %64, %65
  %67 = icmp sgt i32 %66, 1024
  br label %68

68:                                               ; preds = %61, %58
  %69 = phi i1 [ false, %58 ], [ %67, %61 ]
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %72, 2
  store i32 %73, i32* %9, align 4
  br label %58

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 256
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* @SUPPORTED_FLASH_SIZE, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  store i32 1, i32* %23, align 4
  %85 = load i32, i32* %20, align 4
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %89, %90
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sdiv i32 %92, %93
  store i32 %94, i32* %11, align 4
  %95 = load i32*, i32** %18, align 8
  %96 = load i32, i32* @FF_MAX_SS, align 4
  %97 = call i32 @mem_set(i32* %95, i32 0, i32 %96)
  %98 = load i32*, i32** %18, align 8
  %99 = load i32, i32* @MBR_Table, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32* %101, i32** %17, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %201, %86
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %208

105:                                              ; preds = %102
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ule i32 %110, 100
  br i1 %111, label %112, label %121

112:                                              ; preds = %105
  %113 = load i32, i32* %11, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %113, %118
  %120 = sdiv i32 %119, 100
  br label %129

121:                                              ; preds = %105
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = sdiv i32 %126, %127
  br label %129

129:                                              ; preds = %121, %112
  %130 = phi i32 [ %120, %112 ], [ %128, %121 ]
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %201

134:                                              ; preds = %129
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %12, align 4
  %137 = mul nsw i32 %135, %136
  store i32 %137, i32* %22, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %14, align 4
  %140 = mul nsw i32 %138, %139
  store i32 %140, i32* %21, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %134
  store i32 1, i32* %15, align 4
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %22, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %22, align 4
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* %21, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %21, align 4
  br label %151

150:                                              ; preds = %134
  store i32 0, i32* %15, align 4
  br label %151

151:                                              ; preds = %150, %143
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %152, %153
  %155 = sub nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = load i32, i32* @FR_INVALID_PARAMETER, align 4
  %161 = call i32 @LEAVE_MKFS(i32 %160)
  br label %162

162:                                              ; preds = %159, %151
  %163 = load i32, i32* %15, align 4
  %164 = load i32*, i32** %17, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %12, align 4
  %167 = ashr i32 %166, 2
  %168 = and i32 %167, 192
  %169 = or i32 %168, 1
  %170 = load i32*, i32** %17, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32*, i32** %17, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  store i32 %172, i32* %174, align 4
  %175 = load i32*, i32** %17, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  store i32 7, i32* %176, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32*, i32** %17, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 5
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %13, align 4
  %181 = ashr i32 %180, 2
  %182 = and i32 %181, 192
  %183 = load i32, i32* %23, align 4
  %184 = or i32 %182, %183
  %185 = load i32*, i32** %17, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 6
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32*, i32** %17, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 7
  store i32 %187, i32* %189, align 4
  %190 = load i32*, i32** %17, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 8
  %192 = load i32, i32* %22, align 4
  %193 = call i32 @st_dword(i32* %191, i32 %192)
  %194 = load i32*, i32** %17, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 12
  %196 = load i32, i32* %21, align 4
  %197 = call i32 @st_dword(i32* %195, i32 %196)
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %12, align 4
  br label %201

201:                                              ; preds = %162, %133
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* @SZ_PTE, align 4
  %205 = load i32*, i32** %17, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %17, align 8
  br label %102

208:                                              ; preds = %102
  %209 = load i32*, i32** %17, align 8
  %210 = call i32 @st_word(i32* %209, i32 43605)
  %211 = load i32, i32* %5, align 4
  %212 = load i32*, i32** %18, align 8
  %213 = call i64 @disk_write(i32 %211, i32* %212, i32 0, i32 1)
  %214 = load i64, i64* @RES_OK, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %224

216:                                              ; preds = %208
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* @CTRL_SYNC, align 4
  %219 = call i64 @disk_ioctl(i32 %217, i32 %218, i32* null)
  %220 = load i64, i64* @RES_OK, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %216
  %223 = load i32, i32* @FR_OK, align 4
  br label %226

224:                                              ; preds = %216, %208
  %225 = load i32, i32* @FR_DISK_ERR, align 4
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi i32 [ %223, %222 ], [ %225, %224 ]
  store i32 %227, i32* %24, align 4
  %228 = load i32, i32* %24, align 4
  %229 = call i32 @LEAVE_MKFS(i32 %228)
  br label %230

230:                                              ; preds = %226, %55, %48, %41, %34
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i32 @disk_initialize(i32) #1

declare dso_local i64 @disk_ioctl(i32, i32, i32*) #1

declare dso_local i32 @mem_set(i32*, i32, i32) #1

declare dso_local i32 @LEAVE_MKFS(i32) #1

declare dso_local i32 @st_dword(i32*, i32) #1

declare dso_local i32 @st_word(i32*, i32) #1

declare dso_local i64 @disk_write(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
