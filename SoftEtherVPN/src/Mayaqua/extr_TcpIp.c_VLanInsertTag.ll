; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_VLanInsertTag.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_VLanInsertTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_PROTO_TAGVLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VLanInsertTag(i8** %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 4095
  %17 = call i32 @Endian16(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = icmp eq i8** %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 14
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %27, %24, %20, %4
  br label %77

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @MAC_PROTO_TAGVLAN, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @Endian16(i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32* @Malloc(i32 %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 12
  %54 = call i32 @Copy(i32* %53, i32* %14, i32 4)
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 14
  %57 = call i32 @Copy(i32* %56, i32* %13, i32 4)
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = call i32 @Copy(i32* %59, i32* %61, i32 12)
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 16
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 12
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %67, 12
  %69 = call i32 @Copy(i32* %64, i32* %66, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = load i8**, i8*** %5, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @Free(i32* %75)
  br label %77

77:                                               ; preds = %40, %34
  ret void
}

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32* @Malloc(i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
