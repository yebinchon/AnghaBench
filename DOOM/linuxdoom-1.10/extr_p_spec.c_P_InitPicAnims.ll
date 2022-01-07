; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_spec.c_P_InitPicAnims.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_spec.c_P_InitPicAnims.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@anims = common dso_local global %struct.TYPE_4__* null, align 8
@lastanim = common dso_local global %struct.TYPE_4__* null, align 8
@animdefs = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"P_InitPicAnims: bad cycle from %s to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_InitPicAnims() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @anims, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** @lastanim, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %129, %0
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @animdefs, align 8
  %5 = load i32, i32* %1, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %132

11:                                               ; preds = %3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @animdefs, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %11
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @animdefs, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @R_CheckTextureNumForName(i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %129

29:                                               ; preds = %19
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @animdefs, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @R_TextureNumForName(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastanim, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @animdefs, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @R_TextureNumForName(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastanim, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %81

50:                                               ; preds = %11
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @animdefs, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @W_CheckNumForName(i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %129

60:                                               ; preds = %50
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @animdefs, align 8
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @R_FlatNumForName(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastanim, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @animdefs, align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @R_FlatNumForName(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastanim, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %60, %29
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @animdefs, align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastanim, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastanim, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastanim, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  %97 = add nsw i32 %96, 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastanim, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastanim, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %118

104:                                              ; preds = %81
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** @animdefs, align 8
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** @animdefs, align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @I_Error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %116)
  br label %118

118:                                              ; preds = %104, %81
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @animdefs, align 8
  %120 = load i32, i32* %1, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastanim, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastanim, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 1
  store %struct.TYPE_4__* %128, %struct.TYPE_4__** @lastanim, align 8
  br label %129

129:                                              ; preds = %118, %59, %28
  %130 = load i32, i32* %1, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %1, align 4
  br label %3

132:                                              ; preds = %3
  ret void
}

declare dso_local i32 @R_CheckTextureNumForName(i32) #1

declare dso_local i8* @R_TextureNumForName(i32) #1

declare dso_local i32 @W_CheckNumForName(i32) #1

declare dso_local i8* @R_FlatNumForName(i32) #1

declare dso_local i32 @I_Error(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
