; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpParseAttributeList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpParseAttributeList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SstpParseAttributeList(i32* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %3
  store i32* null, i32** %4, align 8
  br label %89

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32* null, i32** %4, align 8
  br label %89

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @READ_USHORT(i32* %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  store i32* %32, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i8* @READ_USHORT(i32* %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  store i32* %41, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 %43, 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = call i32* @NewListFast(i32* null)
  store i32* %46, i32** %8, align 8
  br label %47

47:                                               ; preds = %72, %25
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @LIST_NUM(i32* %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %47
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call %struct.TYPE_8__* @SstpParseAttribute(i32* %53, i32 %54)
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %11, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = icmp eq %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @SstpFreeAttributeList(i32* %59)
  store i32* null, i32** %4, align 8
  br label %89

61:                                               ; preds = %52
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %69 = call i32 @SstpFreeAttribute(%struct.TYPE_8__* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @SstpFreeAttributeList(i32* %70)
  store i32* null, i32** %4, align 8
  br label %89

72:                                               ; preds = %61
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = call i32 @Add(i32* %73, %struct.TYPE_8__* %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %5, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %47

87:                                               ; preds = %47
  %88 = load i32*, i32** %8, align 8
  store i32* %88, i32** %4, align 8
  br label %89

89:                                               ; preds = %87, %67, %58, %24, %20
  %90 = load i32*, i32** %4, align 8
  ret i32* %90
}

declare dso_local i8* @READ_USHORT(i32*) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_8__* @SstpParseAttribute(i32*, i32) #1

declare dso_local i32 @SstpFreeAttributeList(i32*) #1

declare dso_local i32 @SstpFreeAttribute(%struct.TYPE_8__*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
