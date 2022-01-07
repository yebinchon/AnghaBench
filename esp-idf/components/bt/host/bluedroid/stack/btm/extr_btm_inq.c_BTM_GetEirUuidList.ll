; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_GetEirUuidList.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_GetEirUuidList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEN_UUID_128 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"BTM_GetEirUuidList number of uuid in EIR = %d, size of uuid list = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"BTM_GetEirUuidList type = %02X, number of uuid = %d\0A\00", align 1
@LEN_UUID_16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"                     0x%04X\0A\00", align 1
@LEN_UUID_32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"                     0x%08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"                     0x%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_GetEirUuidList(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = bitcast i32* %21 to i8**
  store i8** %22, i8*** %16, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = bitcast i32* %23 to i8**
  store i8** %24, i8*** %17, align 8
  %25 = load i32, i32* @LEN_UUID_128, align 4
  %26 = mul nsw i32 %25, 2
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %18, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %19, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32* @btm_eir_get_uuid_list(i32* %31, i32 %32, i32* %33, i32* %13)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %162

38:                                               ; preds = %5
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %38
  %51 = load i32, i32* %13, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @LEN_UUID_16, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %78, %58
  %60 = load i32, i32* %14, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i8**, i8*** %16, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @STREAM_TO_UINT16(i8* %69, i32* %70)
  %72 = load i8**, i8*** %16, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %59

81:                                               ; preds = %59
  br label %160

82:                                               ; preds = %50
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @LEN_UUID_32, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %82
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %106, %86
  %88 = load i32, i32* %14, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %87
  %93 = load i8**, i8*** %17, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @STREAM_TO_UINT32(i8* %97, i32* %98)
  %100 = load i8**, i8*** %17, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %87

109:                                              ; preds = %87
  br label %159

110:                                              ; preds = %82
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @LEN_UUID_128, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %158

114:                                              ; preds = %110
  store i32 0, i32* %14, align 4
  br label %115

115:                                              ; preds = %154, %114
  %116 = load i32, i32* %14, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %157

120:                                              ; preds = %115
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @LEN_UUID_128, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32*, i32** %12, align 8
  %128 = call i32 @STREAM_TO_ARRAY16(i32* %126, i32* %127)
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %149, %120
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @LEN_UUID_128, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %129
  %134 = load i32, i32* %15, align 4
  %135 = mul nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %30, i64 %136
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @LEN_UUID_128, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @sprintf(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %133
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %15, align 4
  br label %129

152:                                              ; preds = %129
  %153 = call i32 (i8*, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %30)
  br label %154

154:                                              ; preds = %152
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %115

157:                                              ; preds = %115
  br label %158

158:                                              ; preds = %157, %110
  br label %159

159:                                              ; preds = %158, %109
  br label %160

160:                                              ; preds = %159, %81
  %161 = load i32, i32* %13, align 4
  store i32 %161, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %162

162:                                              ; preds = %160, %37
  %163 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @btm_eir_get_uuid_list(i32*, i32, i32*, i32*) #2

declare dso_local i32 @BTM_TRACE_WARNING(i8*, i32, i32) #2

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, ...) #2

declare dso_local i32 @STREAM_TO_UINT16(i8*, i32*) #2

declare dso_local i32 @STREAM_TO_UINT32(i8*, i32*) #2

declare dso_local i32 @STREAM_TO_ARRAY16(i32*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
