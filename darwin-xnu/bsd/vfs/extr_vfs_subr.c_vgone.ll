; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vgone.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vgone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32, i64, %struct.specinfo*, %struct.vnode*, %struct.vnode** }
%struct.specinfo = type { i32 }

@DOCLOSE = common dso_local global i32 0, align 4
@VBLK = common dso_local global i64 0, align 8
@VCHR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"missing bdev\00", align 1
@SI_ALIASED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"missing alias\00", align 1
@M_SPECINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, i32)* @vgone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgone(%struct.vnode* %0, i32 %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.specinfo*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DOCLOSE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @vclean(%struct.vnode* %8, i32 %11)
  %13 = load %struct.vnode*, %struct.vnode** %3, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VBLK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.vnode*, %struct.vnode** %3, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VCHR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %150

24:                                               ; preds = %18, %2
  %25 = load %struct.vnode*, %struct.vnode** %3, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 3
  %27 = load %struct.specinfo*, %struct.specinfo** %26, align 8
  %28 = icmp ne %struct.specinfo* %27, null
  br i1 %28, label %29, label %150

29:                                               ; preds = %24
  %30 = call i32 (...) @SPECHASH_LOCK()
  %31 = load %struct.vnode*, %struct.vnode** %3, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 5
  %33 = load %struct.vnode**, %struct.vnode*** %32, align 8
  %34 = load %struct.vnode*, %struct.vnode** %33, align 8
  %35 = load %struct.vnode*, %struct.vnode** %3, align 8
  %36 = icmp eq %struct.vnode* %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.vnode*, %struct.vnode** %3, align 8
  %39 = getelementptr inbounds %struct.vnode, %struct.vnode* %38, i32 0, i32 4
  %40 = load %struct.vnode*, %struct.vnode** %39, align 8
  %41 = load %struct.vnode*, %struct.vnode** %3, align 8
  %42 = getelementptr inbounds %struct.vnode, %struct.vnode* %41, i32 0, i32 5
  %43 = load %struct.vnode**, %struct.vnode*** %42, align 8
  store %struct.vnode* %40, %struct.vnode** %43, align 8
  br label %75

44:                                               ; preds = %29
  %45 = load %struct.vnode*, %struct.vnode** %3, align 8
  %46 = getelementptr inbounds %struct.vnode, %struct.vnode* %45, i32 0, i32 5
  %47 = load %struct.vnode**, %struct.vnode*** %46, align 8
  %48 = load %struct.vnode*, %struct.vnode** %47, align 8
  store %struct.vnode* %48, %struct.vnode** %5, align 8
  br label %49

49:                                               ; preds = %65, %44
  %50 = load %struct.vnode*, %struct.vnode** %5, align 8
  %51 = icmp ne %struct.vnode* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load %struct.vnode*, %struct.vnode** %5, align 8
  %54 = getelementptr inbounds %struct.vnode, %struct.vnode* %53, i32 0, i32 4
  %55 = load %struct.vnode*, %struct.vnode** %54, align 8
  %56 = load %struct.vnode*, %struct.vnode** %3, align 8
  %57 = icmp ne %struct.vnode* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %65

59:                                               ; preds = %52
  %60 = load %struct.vnode*, %struct.vnode** %3, align 8
  %61 = getelementptr inbounds %struct.vnode, %struct.vnode* %60, i32 0, i32 4
  %62 = load %struct.vnode*, %struct.vnode** %61, align 8
  %63 = load %struct.vnode*, %struct.vnode** %5, align 8
  %64 = getelementptr inbounds %struct.vnode, %struct.vnode* %63, i32 0, i32 4
  store %struct.vnode* %62, %struct.vnode** %64, align 8
  br label %69

65:                                               ; preds = %58
  %66 = load %struct.vnode*, %struct.vnode** %5, align 8
  %67 = getelementptr inbounds %struct.vnode, %struct.vnode* %66, i32 0, i32 4
  %68 = load %struct.vnode*, %struct.vnode** %67, align 8
  store %struct.vnode* %68, %struct.vnode** %5, align 8
  br label %49

69:                                               ; preds = %59, %49
  %70 = load %struct.vnode*, %struct.vnode** %5, align 8
  %71 = icmp eq %struct.vnode* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  br label %75

75:                                               ; preds = %74, %37
  %76 = load %struct.vnode*, %struct.vnode** %3, align 8
  %77 = getelementptr inbounds %struct.vnode, %struct.vnode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SI_ALIASED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %139

82:                                               ; preds = %75
  store %struct.vnode* null, %struct.vnode** %6, align 8
  %83 = load %struct.vnode*, %struct.vnode** %3, align 8
  %84 = getelementptr inbounds %struct.vnode, %struct.vnode* %83, i32 0, i32 5
  %85 = load %struct.vnode**, %struct.vnode*** %84, align 8
  %86 = load %struct.vnode*, %struct.vnode** %85, align 8
  store %struct.vnode* %86, %struct.vnode** %5, align 8
  br label %87

87:                                               ; preds = %113, %82
  %88 = load %struct.vnode*, %struct.vnode** %5, align 8
  %89 = icmp ne %struct.vnode* %88, null
  br i1 %89, label %90, label %117

90:                                               ; preds = %87
  %91 = load %struct.vnode*, %struct.vnode** %5, align 8
  %92 = getelementptr inbounds %struct.vnode, %struct.vnode* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.vnode*, %struct.vnode** %3, align 8
  %95 = getelementptr inbounds %struct.vnode, %struct.vnode* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = load %struct.vnode*, %struct.vnode** %5, align 8
  %100 = getelementptr inbounds %struct.vnode, %struct.vnode* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.vnode*, %struct.vnode** %3, align 8
  %103 = getelementptr inbounds %struct.vnode, %struct.vnode* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %98, %90
  br label %113

107:                                              ; preds = %98
  %108 = load %struct.vnode*, %struct.vnode** %6, align 8
  %109 = icmp ne %struct.vnode* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %117

111:                                              ; preds = %107
  %112 = load %struct.vnode*, %struct.vnode** %5, align 8
  store %struct.vnode* %112, %struct.vnode** %6, align 8
  br label %113

113:                                              ; preds = %111, %106
  %114 = load %struct.vnode*, %struct.vnode** %5, align 8
  %115 = getelementptr inbounds %struct.vnode, %struct.vnode* %114, i32 0, i32 4
  %116 = load %struct.vnode*, %struct.vnode** %115, align 8
  store %struct.vnode* %116, %struct.vnode** %5, align 8
  br label %87

117:                                              ; preds = %110, %87
  %118 = load %struct.vnode*, %struct.vnode** %6, align 8
  %119 = icmp eq %struct.vnode* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %117
  %123 = load %struct.vnode*, %struct.vnode** %5, align 8
  %124 = icmp eq %struct.vnode* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* @SI_ALIASED, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.vnode*, %struct.vnode** %6, align 8
  %129 = getelementptr inbounds %struct.vnode, %struct.vnode* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %125, %122
  %133 = load i32, i32* @SI_ALIASED, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.vnode*, %struct.vnode** %3, align 8
  %136 = getelementptr inbounds %struct.vnode, %struct.vnode* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %75
  %140 = call i32 (...) @SPECHASH_UNLOCK()
  %141 = load %struct.vnode*, %struct.vnode** %3, align 8
  %142 = getelementptr inbounds %struct.vnode, %struct.vnode* %141, i32 0, i32 3
  %143 = load %struct.specinfo*, %struct.specinfo** %142, align 8
  store %struct.specinfo* %143, %struct.specinfo** %7, align 8
  %144 = load %struct.vnode*, %struct.vnode** %3, align 8
  %145 = getelementptr inbounds %struct.vnode, %struct.vnode* %144, i32 0, i32 3
  store %struct.specinfo* null, %struct.specinfo** %145, align 8
  %146 = load %struct.specinfo*, %struct.specinfo** %7, align 8
  %147 = bitcast %struct.specinfo* %146 to i8*
  %148 = load i32, i32* @M_SPECINFO, align 4
  %149 = call i32 @FREE_ZONE(i8* %147, i32 4, i32 %148)
  br label %150

150:                                              ; preds = %139, %24, %18
  ret void
}

declare dso_local i32 @vclean(%struct.vnode*, i32) #1

declare dso_local i32 @SPECHASH_LOCK(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @SPECHASH_UNLOCK(...) #1

declare dso_local i32 @FREE_ZONE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
