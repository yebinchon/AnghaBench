; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_do_crypt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_do_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_walker_ctx = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_crypt(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypt_walker_ctx*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.crypt_walker_ctx*
  store %struct.crypt_walker_ctx* %10, %struct.crypt_walker_ctx** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.crypt_walker_ctx*, %struct.crypt_walker_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.crypt_walker_ctx, %struct.crypt_walker_ctx* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %11, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.crypt_walker_ctx*, %struct.crypt_walker_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.crypt_walker_ctx, %struct.crypt_walker_ctx* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = srem i32 %18, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.crypt_walker_ctx*, %struct.crypt_walker_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.crypt_walker_ctx, %struct.crypt_walker_ctx* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.crypt_walker_ctx*, %struct.crypt_walker_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.crypt_walker_ctx, %struct.crypt_walker_ctx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.crypt_walker_ctx*, %struct.crypt_walker_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.crypt_walker_ctx, %struct.crypt_walker_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @cccbc_update(%struct.TYPE_2__* %30, i32 %33, i32 %36, i32 %37, i32* %38, i32* %39)
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.crypt_walker_ctx*, %struct.crypt_walker_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.crypt_walker_ctx, %struct.crypt_walker_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 8
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cccbc_update(%struct.TYPE_2__*, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
