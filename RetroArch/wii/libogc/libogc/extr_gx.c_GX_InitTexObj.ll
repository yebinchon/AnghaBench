; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitTexObj.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitTexObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_texobj = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitTexObj(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.__gx_texobj*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = bitcast i32* %22 to %struct.__gx_texobj*
  store %struct.__gx_texobj* %23, %struct.__gx_texobj** %21, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %8
  br label %182

27:                                               ; preds = %8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @memset(i32* %28, i32 0, i32 4)
  %30 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %31 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -4
  %34 = load i32, i32* %14, align 4
  %35 = and i32 %34, 3
  %36 = or i32 %33, %35
  %37 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %38 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %40 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, -13
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @_SHIFTL(i32 %43, i32 2, i32 2)
  %45 = or i32 %42, %44
  %46 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %47 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %49 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -17
  %52 = or i32 %51, 16
  %53 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %54 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %27
  %58 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %59 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 137
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, 136
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 138
  br i1 %69, label %70, label %78

70:                                               ; preds = %67, %64, %57
  %71 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %72 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, -225
  %75 = or i32 %74, 160
  %76 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %77 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %86

78:                                               ; preds = %67
  %79 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %80 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, -225
  %83 = or i32 %82, 192
  %84 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %85 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %70
  br label %95

87:                                               ; preds = %27
  %88 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %89 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, -225
  %92 = or i32 %91, 128
  %93 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %94 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %87, %86
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %98 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %100 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, -1024
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %103, 1
  %105 = and i32 %104, 1023
  %106 = or i32 %102, %105
  %107 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %108 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %110 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, -1047553
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %113, 1
  %115 = call i32 @_SHIFTL(i32 %114, i32 10, i32 10)
  %116 = or i32 %112, %115
  %117 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %118 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %120 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, -15728641
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @_SHIFTL(i32 %123, i32 20, i32 4)
  %125 = or i32 %122, %124
  %126 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %127 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %129 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, -16777216
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i8* %132)
  %134 = call i32 @_SHIFTR(i32 %133, i32 5, i32 24)
  %135 = or i32 %131, %134
  %136 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %137 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %13, align 4
  switch i32 %138, label %154 [
    i32 134, label %139
    i32 137, label %139
    i32 133, label %142
    i32 132, label %142
    i32 136, label %142
    i32 131, label %145
    i32 130, label %145
    i32 129, label %145
    i32 128, label %145
    i32 138, label %148
    i32 135, label %151
  ]

139:                                              ; preds = %95, %95
  store i32 3, i32* %19, align 4
  store i32 3, i32* %20, align 4
  %140 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %141 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %140, i32 0, i32 5
  store i32 1, i32* %141, align 4
  br label %157

142:                                              ; preds = %95, %95, %95
  store i32 3, i32* %19, align 4
  store i32 2, i32* %20, align 4
  %143 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %144 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %143, i32 0, i32 5
  store i32 2, i32* %144, align 4
  br label %157

145:                                              ; preds = %95, %95, %95, %95
  store i32 2, i32* %19, align 4
  store i32 2, i32* %20, align 4
  %146 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %147 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %146, i32 0, i32 5
  store i32 2, i32* %147, align 4
  br label %157

148:                                              ; preds = %95
  store i32 2, i32* %19, align 4
  store i32 2, i32* %20, align 4
  %149 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %150 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %149, i32 0, i32 5
  store i32 3, i32* %150, align 4
  br label %157

151:                                              ; preds = %95
  store i32 3, i32* %19, align 4
  store i32 3, i32* %20, align 4
  %152 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %153 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %152, i32 0, i32 5
  store i32 0, i32* %153, align 4
  br label %157

154:                                              ; preds = %95
  store i32 2, i32* %19, align 4
  store i32 2, i32* %20, align 4
  %155 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %156 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %155, i32 0, i32 5
  store i32 2, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %151, %148, %145, %142, %139
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %19, align 4
  %160 = shl i32 1, %159
  %161 = add nsw i32 %158, %160
  %162 = sub nsw i32 %161, 1
  %163 = load i32, i32* %19, align 4
  %164 = ashr i32 %162, %163
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %20, align 4
  %167 = shl i32 1, %166
  %168 = add nsw i32 %165, %167
  %169 = sub nsw i32 %168, 1
  %170 = load i32, i32* %20, align 4
  %171 = ashr i32 %169, %170
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %18, align 4
  %174 = mul nsw i32 %172, %173
  %175 = and i32 %174, 32767
  %176 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %177 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 4
  %178 = load %struct.__gx_texobj*, %struct.__gx_texobj** %21, align 8
  %179 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, 2
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %157, %26
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @MEM_VIRTUAL_TO_PHYSICAL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
