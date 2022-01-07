; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_NewMdEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_NewMdEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.evp_md_st*, i8*, i32, i32 }
%struct.evp_md_st = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"[null-digest]\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"NewMdEx(): Algorithm %s not found by EVP_get_digestbyname().\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"NewMdEx(): EVP_DigestInit_ex() failed with error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @NewMdEx(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %91

10:                                               ; preds = %2
  %11 = call i8* @ZeroMalloc(i32 32)
  %12 = bitcast i8* %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @StrCpy(i32 %15, i32 4, i8* %16)
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @StrCmpi(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %10
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @StrCmpi(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @IsEmptyStr(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21, %10
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %3, align 8
  br label %91

33:                                               ; preds = %25
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @EVP_get_digestbyname(i8* %34)
  %36 = inttoptr i64 %35 to %struct.evp_md_st*
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store %struct.evp_md_st* %36, %struct.evp_md_st** %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load %struct.evp_md_st*, %struct.evp_md_st** %40, align 8
  %42 = icmp eq %struct.evp_md_st* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @Debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = call i32 @FreeMd(%struct.TYPE_4__* %48)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %91

50:                                               ; preds = %33
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load %struct.evp_md_st*, %struct.evp_md_st** %52, align 8
  %54 = bitcast %struct.evp_md_st* %53 to i32*
  %55 = call i32 @EVP_MD_size(i32* %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %50
  %64 = call i8* @ZeroMalloc(i32 4)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @HMAC_CTX_init(i8* %69)
  br label %89

71:                                               ; preds = %50
  %72 = call i8* (...) @EVP_MD_CTX_create()
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load %struct.evp_md_st*, %struct.evp_md_st** %79, align 8
  %81 = call i32 @EVP_DigestInit_ex(i8* %77, %struct.evp_md_st* %80, i32* null)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = call i32 (...) @OpenSSL_Error()
  %85 = call i32 @Debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = call i32 @FreeMd(%struct.TYPE_4__* %86)
  br label %88

88:                                               ; preds = %83, %71
  br label %89

89:                                               ; preds = %88, %63
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %90, %struct.TYPE_4__** %3, align 8
  br label %91

91:                                               ; preds = %89, %43, %29, %9
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %92
}

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i64 @EVP_get_digestbyname(i8*) #1

declare dso_local i32 @Debug(i8*, i32) #1

declare dso_local i32 @FreeMd(%struct.TYPE_4__*) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @HMAC_CTX_init(i8*) #1

declare dso_local i8* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @EVP_DigestInit_ex(i8*, %struct.evp_md_st*, i32*) #1

declare dso_local i32 @OpenSSL_Error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
