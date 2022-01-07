; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_BioToK.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_BioToK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i8* }

@openssl_lock = common dso_local global i32 0, align 4
@PKeyPasswordCallbackFunction = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @BioToK(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %93

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @StrLen(i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8* null, i8** %9, align 8
  br label %25

25:                                               ; preds = %24, %20, %17
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @d2i_PUBKEY_bio(i32* %32, i32* null)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %93

37:                                               ; preds = %31
  br label %53

38:                                               ; preds = %28
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @openssl_lock, align 4
  %42 = call i32 @Lock(i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* @PKeyPasswordCallbackFunction, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32* @PEM_read_bio_PUBKEY(i32* %43, i32* null, i32* %45, %struct.TYPE_8__* %12)
  store i32* %46, i32** %10, align 8
  %47 = load i32, i32* @openssl_lock, align 4
  %48 = call i32 @Unlock(i32 %47)
  %49 = load i32*, i32** %10, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %93

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %37
  br label %84

54:                                               ; preds = %25
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i32, i32* @openssl_lock, align 4
  %59 = call i32 @Lock(i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32* @d2i_PrivateKey_bio(i32* %60, i32* null)
  store i32* %61, i32** %10, align 8
  %62 = load i32, i32* @openssl_lock, align 4
  %63 = call i32 @Unlock(i32 %62)
  %64 = load i32*, i32** %10, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %93

67:                                               ; preds = %57
  br label %83

68:                                               ; preds = %54
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = load i32, i32* @openssl_lock, align 4
  %72 = call i32 @Lock(i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i64, i64* @PKeyPasswordCallbackFunction, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = call i32* @PEM_read_bio_PrivateKey(i32* %73, i32* null, i32* %75, %struct.TYPE_8__* %13)
  store i32* %76, i32** %10, align 8
  %77 = load i32, i32* @openssl_lock, align 4
  %78 = call i32 @Unlock(i32 %77)
  %79 = load i32*, i32** %10, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %93

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %67
  br label %84

84:                                               ; preds = %83, %53
  %85 = call %struct.TYPE_7__* @ZeroMalloc(i32 16)
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %11, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32* %86, i32** %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %5, align 8
  br label %93

93:                                               ; preds = %84, %81, %66, %51, %36, %16
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %94
}

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i32* @d2i_PUBKEY_bio(i32*, i32*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32* @PEM_read_bio_PUBKEY(i32*, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32* @d2i_PrivateKey_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_PrivateKey(i32*, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @ZeroMalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
