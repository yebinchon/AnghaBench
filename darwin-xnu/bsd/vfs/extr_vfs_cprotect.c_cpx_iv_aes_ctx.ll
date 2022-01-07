; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cprotect.c_cpx_iv_aes_ctx.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cprotect.c_cpx_iv_aes_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpx = type { i32, i32, i32, i32 }

@CPX_IV_AES_CTX_INITIALIZED = common dso_local global i32 0, align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@CPX_IV_AES_CTX_VFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cpx_iv_aes_ctx(%struct.cpx* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.cpx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.cpx* %0, %struct.cpx** %3, align 8
  %7 = load %struct.cpx*, %struct.cpx** %3, align 8
  %8 = getelementptr inbounds %struct.cpx, %struct.cpx* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CPX_IV_AES_CTX_INITIALIZED, align 4
  %11 = call i64 @ISSET(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.cpx*, %struct.cpx** %3, align 8
  %15 = getelementptr inbounds %struct.cpx, %struct.cpx* %14, i32 0, i32 0
  store i32* %15, i32** %2, align 8
  br label %40

16:                                               ; preds = %1
  %17 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = call i32 @SHA1Init(i32* %4)
  %22 = load %struct.cpx*, %struct.cpx** %3, align 8
  %23 = getelementptr inbounds %struct.cpx, %struct.cpx* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cpx*, %struct.cpx** %3, align 8
  %26 = getelementptr inbounds %struct.cpx, %struct.cpx* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SHA1Update(i32* %4, i32 %24, i32 %27)
  %29 = call i32 @SHA1Final(i32* %20, i32* %4)
  %30 = load %struct.cpx*, %struct.cpx** %3, align 8
  %31 = call i32 @cpx_set_aes_iv_key(%struct.cpx* %30, i32* %20)
  %32 = load %struct.cpx*, %struct.cpx** %3, align 8
  %33 = getelementptr inbounds %struct.cpx, %struct.cpx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CPX_IV_AES_CTX_VFS, align 4
  %36 = call i32 @SET(i32 %34, i32 %35)
  %37 = load %struct.cpx*, %struct.cpx** %3, align 8
  %38 = getelementptr inbounds %struct.cpx, %struct.cpx* %37, i32 0, i32 0
  store i32* %38, i32** %2, align 8
  %39 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %39)
  br label %40

40:                                               ; preds = %16, %13
  %41 = load i32*, i32** %2, align 8
  ret i32* %41
}

declare dso_local i64 @ISSET(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SHA1Init(i32*) #1

declare dso_local i32 @SHA1Update(i32*, i32, i32) #1

declare dso_local i32 @SHA1Final(i32*, i32*) #1

declare dso_local i32 @cpx_set_aes_iv_key(%struct.cpx*, i32*) #1

declare dso_local i32 @SET(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
