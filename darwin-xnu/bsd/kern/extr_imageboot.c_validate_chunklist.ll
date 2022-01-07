; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_validate_chunklist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_validate_chunklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunklist_pubkey = type { i32, i32 }
%struct.chunklist_hdr = type { i64, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"no space for header\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHUNKLIST_MAGIC = common dso_local global i64 0, align 8
@CHUNKLIST_FILE_VERSION_10 = common dso_local global i64 0, align 8
@CHUNKLIST_SIGNATURE_METHOD_10 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"unrecognized chunklist format\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"invalid chunk_count (%llu) or chunk_offset (%llu)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"invalid signature offset (%llu)\00", align 1
@CHUNKLIST_SIG_LEN = common dso_local global i64 0, align 8
@MISSING_SIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"hashing chunklist\00", align 1
@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"validating chunklist signature against pub keys\00", align 1
@CHUNKLIST_NPUBKEYS = common dso_local global i64 0, align 8
@chunklist_pubkeys = common dso_local global %struct.chunklist_pubkey* null, align 8
@CHUNKLIST_PUBKEY_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"validated chunklist signature with key %lu (prod=%d)\00", align 1
@INVALID_SIG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"signature did not verify against any known public key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @validate_chunklist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_chunklist(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.chunklist_hdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.chunklist_pubkey*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.chunklist_hdr*
  store %struct.chunklist_hdr* %19, %struct.chunklist_hdr** %11, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ult i64 %20, 48
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %202

25:                                               ; preds = %2
  %26 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %27 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHUNKLIST_MAGIC, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %49, label %31

31:                                               ; preds = %25
  %32 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %33 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHUNKLIST_FILE_VERSION_10, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %39 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CHUNKLIST_SIGNATURE_METHOD_10, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %45 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CHUNKLIST_SIGNATURE_METHOD_10, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %37, %31, %25
  %50 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %3, align 4
  br label %202

52:                                               ; preds = %43
  %53 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %54 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %57 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @os_mul_and_add_overflow(i32 %55, i32 4, i32 %58, i64* %9)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %52
  %62 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %63 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 48
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67, %61, %52
  %72 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %73 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %76 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %3, align 4
  br label %202

80:                                               ; preds = %67
  %81 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %82 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @os_add_overflow(i32 %83, i32 4, i64* %8)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %80
  %87 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %88 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %90, 48
  br i1 %91, label %106, label %92

92:                                               ; preds = %86
  %93 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %94 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %9, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %101 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %5, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %99, %92, %86, %80
  %107 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %108 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* %3, align 4
  br label %202

112:                                              ; preds = %99
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %5, align 8
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %128, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %5, align 8
  %118 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %119 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = call i64 @os_sub_overflow(i64 %117, i64 %121, i64* %7)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %116
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* @CHUNKLIST_SIG_LEN, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124, %116, %112
  %129 = load i32, i32* @MISSING_SIG, align 4
  store i32 %129, i32* %3, align 4
  br label %202

130:                                              ; preds = %124
  %131 = call i32 (i8*, ...) @AUTHDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %133 = zext i32 %132 to i64
  %134 = call i8* @llvm.stacksave()
  store i8* %134, i8** %12, align 8
  %135 = alloca i32, i64 %133, align 16
  store i64 %133, i64* %13, align 8
  %136 = call i32 @SHA256_Init(i32* %14)
  %137 = load i8*, i8** %4, align 8
  %138 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %139 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = call i32 @SHA256_Update(i32* %14, i8* %137, i64 %141)
  %143 = call i32 @SHA256_Final(i32* %135, i32* %14)
  %144 = call i32 (i8*, ...) @AUTHDBG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %15, align 8
  br label %145

145:                                              ; preds = %184, %130
  %146 = load i64, i64* %15, align 8
  %147 = load i64, i64* @CHUNKLIST_NPUBKEYS, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %187

149:                                              ; preds = %145
  %150 = load %struct.chunklist_pubkey*, %struct.chunklist_pubkey** @chunklist_pubkeys, align 8
  %151 = load i64, i64* %15, align 8
  %152 = getelementptr inbounds %struct.chunklist_pubkey, %struct.chunklist_pubkey* %150, i64 %151
  store %struct.chunklist_pubkey* %152, %struct.chunklist_pubkey** %16, align 8
  %153 = load %struct.chunklist_pubkey*, %struct.chunklist_pubkey** %16, align 8
  %154 = getelementptr inbounds %struct.chunklist_pubkey, %struct.chunklist_pubkey* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @CHUNKLIST_PUBKEY_LEN, align 4
  %157 = load i8*, i8** %4, align 8
  %158 = load %struct.chunklist_hdr*, %struct.chunklist_hdr** %11, align 8
  %159 = getelementptr inbounds %struct.chunklist_hdr, %struct.chunklist_hdr* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr i8, i8* %157, i64 %161
  %163 = load i64, i64* %7, align 8
  %164 = call i32 @validate_signature(i32 %155, i32 %156, i8* %162, i64 %163, i32* %135)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %149
  %168 = load i64, i64* %15, align 8
  %169 = load %struct.chunklist_pubkey*, %struct.chunklist_pubkey** %16, align 8
  %170 = getelementptr inbounds %struct.chunklist_pubkey, %struct.chunklist_pubkey* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, ...) @AUTHDBG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i64 %168, i32 %171)
  %173 = load %struct.chunklist_pubkey*, %struct.chunklist_pubkey** %16, align 8
  %174 = getelementptr inbounds %struct.chunklist_pubkey, %struct.chunklist_pubkey* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %10, align 4
  br label %189

176:                                              ; preds = %149
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @INVALID_SIG, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %182

181:                                              ; preds = %176
  br label %189

182:                                              ; preds = %180
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %15, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %15, align 8
  br label %145

187:                                              ; preds = %145
  %188 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %181, %167
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %200

194:                                              ; preds = %189
  %195 = load i32, i32* %10, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @EINVAL, align 4
  store i32 %199, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %200

200:                                              ; preds = %198, %197, %192
  %201 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %201)
  br label %202

202:                                              ; preds = %200, %128, %106, %71, %49, %22
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @AUTHPRNT(i8*, ...) #1

declare dso_local i64 @os_mul_and_add_overflow(i32, i32, i32, i64*) #1

declare dso_local i64 @os_add_overflow(i32, i32, i64*) #1

declare dso_local i64 @os_sub_overflow(i64, i64, i64*) #1

declare dso_local i32 @AUTHDBG(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SHA256_Init(i32*) #1

declare dso_local i32 @SHA256_Update(i32*, i8*, i64) #1

declare dso_local i32 @SHA256_Final(i32*, i32*) #1

declare dso_local i32 @validate_signature(i32, i32, i8*, i64, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
