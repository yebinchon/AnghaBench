; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_get_tlv_at_offset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_get_tlv_at_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"necp_get_tlv_at_offset buffer is NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"necp_get_tlv_at_offset buffer_length is too small for TLV (%u < %u)\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"necp_get_tlv_at_offset buffer_length is too small for TLV of length %u (%u < %u)\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"necp_get_tlv_at_offset out_buffer_length is too small for TLV value (%u < %u)\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"necp_get_tlv_at_offset tlv_value is NULL\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32, i8*, i32*)* @necp_get_tlv_at_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_get_tlv_at_offset(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %7
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i8*, i8** %14, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = call i32 @necp_packet_get_tlv_at_offset(i32* %21, i32 %22, i32 %23, i8* %24, i32* %25)
  store i32 %26, i32* %8, align 4
  br label %117

27:                                               ; preds = %7
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @LOG_ERR, align 4
  %32 = call i32 @NECPLOG0(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %8, align 4
  br label %117

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 4
  %38 = add i64 %37, 4
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 4
  %48 = add i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 (i32, i8*, i32, i32, ...) @NECPLOG(i32 %43, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %8, align 4
  br label %117

52:                                               ; preds = %34
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @necp_buffer_get_tlv_length(i32* %53, i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 4
  %63 = add i64 %62, 4
  %64 = sub i64 %59, %63
  %65 = icmp ugt i64 %57, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %52
  %67 = load i32, i32* @LOG_ERR, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 4
  %73 = add i64 %72, 4
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %73, %75
  %77 = call i32 (i32, i8*, i32, i32, ...) @NECPLOG(i32 %67, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69, i64 %76)
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %8, align 4
  br label %117

79:                                               ; preds = %52
  %80 = load i8*, i8** %14, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %110

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* @LOG_ERR, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 (i32, i8*, i32, i32, ...) @NECPLOG(i32 %90, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %8, align 4
  br label %117

95:                                               ; preds = %85
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32* @necp_buffer_get_tlv_value(i32* %96, i32 %97, i32* null)
  store i32* %98, i32** %17, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @LOG_ERR, align 4
  %103 = call i32 @NECPLOG0(i32 %102, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @ENOENT, align 4
  store i32 %104, i32* %8, align 4
  br label %117

105:                                              ; preds = %95
  %106 = load i8*, i8** %14, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @memcpy(i8* %106, i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %82, %79
  %111 = load i32*, i32** %15, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %16, align 4
  %115 = load i32*, i32** %15, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %110
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %101, %89, %66, %42, %30, %20
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i32 @necp_packet_get_tlv_at_offset(i32*, i32, i32, i8*, i32*) #1

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @necp_buffer_get_tlv_length(i32*, i32) #1

declare dso_local i32* @necp_buffer_get_tlv_value(i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
