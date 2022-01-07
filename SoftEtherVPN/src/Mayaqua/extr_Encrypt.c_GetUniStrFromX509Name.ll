; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_GetUniStrFromX509Name.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_GetUniStrFromX509Name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@V_ASN1_BMPSTRING = common dso_local global i64 0, align 8
@V_ASN1_UTF8STRING = common dso_local global i64 0, align 8
@V_ASN1_T61STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetUniStrFromX509Name(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [1024 x i32], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %2
  store i32* null, i32** %3, align 8
  br label %128

24:                                               ; preds = %20
  %25 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %26 = call i32 @Zero(i32* %25, i32 4096)
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %30 = bitcast i32* %29 to i8*
  %31 = call i64 @X509_NAME_get_text_by_NID(i8* %27, i32 %28, i8* %30, i32 4094)
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32* null, i32** %3, align 8
  br label %128

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = call i32* @OBJ_nid2obj(i32 %35)
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32* null, i32** %3, align 8
  br label %128

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @X509_NAME_get_index_by_OBJ(i8* %41, i32* %42, i32 -1)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32* null, i32** %3, align 8
  br label %128

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @X509_NAME_get_entry(i8* %48, i32 %49)
  %51 = call %struct.TYPE_3__* @X509_NAME_ENTRY_get_data(i32 %50)
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %14, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %53 = icmp eq %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32* null, i32** %3, align 8
  br label %128

55:                                               ; preds = %47
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @V_ASN1_BMPSTRING, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %55
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @V_ASN1_UTF8STRING, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @V_ASN1_T61STRING, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68, %62
  store i32 1, i32* %12, align 4
  br label %75

75:                                               ; preds = %74, %68
  %76 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %77 = call i32 @UniStrLen(i32* %76)
  %78 = mul nsw i32 %77, 4
  %79 = add nsw i32 %78, 8
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %81

81:                                               ; preds = %92, %75
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %88, 128
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 1, i32* %11, align 4
  br label %95

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %81

95:                                               ; preds = %90, %81
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %100 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %101 = call i32 @StrLen(i32* %100)
  %102 = call i64 @CalcUtf8ToUni(i32* %99, i32 %101)
  store i64 %102, i64* %16, align 8
  %103 = load i64, i64* %16, align 8
  %104 = add i64 %103, 8
  %105 = call i32* @ZeroMalloc(i64 %104)
  store i32* %105, i32** %15, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = load i64, i64* %16, align 8
  %108 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %109 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %110 = call i32 @StrLen(i32* %109)
  %111 = call i32 @Utf8ToUni(i32* %106, i64 %107, i32* %108, i32 %110)
  %112 = load i32*, i32** %15, align 8
  store i32* %112, i32** %3, align 8
  br label %128

113:                                              ; preds = %95
  %114 = load i32, i32* %11, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = getelementptr inbounds [1024 x i32], [1024 x i32]* %17, i64 0, i64 0
  %118 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %119 = bitcast i32* %118 to i8*
  %120 = call i32 @StrToUni(i32* %117, i32 4096, i8* %119)
  %121 = getelementptr inbounds [1024 x i32], [1024 x i32]* %17, i64 0, i64 0
  %122 = call i32* @CopyUniStr(i32* %121)
  store i32* %122, i32** %3, align 8
  br label %128

123:                                              ; preds = %113
  %124 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %125 = call i32 @EndianUnicode(i32* %124)
  %126 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %127 = call i32* @CopyUniStr(i32* %126)
  store i32* %127, i32** %3, align 8
  br label %128

128:                                              ; preds = %123, %116, %98, %54, %46, %39, %33, %23
  %129 = load i32*, i32** %3, align 8
  ret i32* %129
}

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i64 @X509_NAME_get_text_by_NID(i8*, i32, i8*, i32) #1

declare dso_local i32* @OBJ_nid2obj(i32) #1

declare dso_local i32 @X509_NAME_get_index_by_OBJ(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @X509_NAME_ENTRY_get_data(i32) #1

declare dso_local i32 @X509_NAME_get_entry(i8*, i32) #1

declare dso_local i32 @UniStrLen(i32*) #1

declare dso_local i64 @CalcUtf8ToUni(i32*, i32) #1

declare dso_local i32 @StrLen(i32*) #1

declare dso_local i32* @ZeroMalloc(i64) #1

declare dso_local i32 @Utf8ToUni(i32*, i64, i32*, i32) #1

declare dso_local i32 @StrToUni(i32*, i32, i8*) #1

declare dso_local i32* @CopyUniStr(i32*) #1

declare dso_local i32 @EndianUnicode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
