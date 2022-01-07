; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_readahead.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.nfsmount = type { i64, i64 }
%struct.nfsbuf = type { i32, i32, i64, i32, i32, i32, i64 }

@ENXIO = common dso_local global i32 0, align 4
@NBLK_READ = common dso_local global i32 0, align 4
@NBLK_NOWAIT = common dso_local global i32 0, align 4
@IO_NOCACHE = common dso_local global i32 0, align 4
@NB_CACHE = common dso_local global i32 0, align 4
@NB_DELWRI = common dso_local global i32 0, align 4
@NB_NCRDAHEAD = common dso_local global i32 0, align 4
@NB_READ = common dso_local global i32 0, align 4
@NB_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_buf_readahead(%struct.TYPE_7__* %0, i32 %1, i64* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsmount*, align 8
  %15 = alloca %struct.nfsbuf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_7__* %18)
  store %struct.nfsmount* %19, %struct.nfsmount** %14, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %21 = call i64 @nfs_mount_gone(%struct.nfsmount* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %7, align 4
  br label %201

25:                                               ; preds = %6
  %26 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %27 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %201

31:                                               ; preds = %25
  %32 = load i64*, i64** %10, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %201

37:                                               ; preds = %31
  store i64 0, i64* %17, align 8
  br label %38

38:                                               ; preds = %192, %37
  %39 = load i64, i64* %17, align 8
  %40 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %41 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp sle i64 %46, %47
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i1 [ false, %38 ], [ %48, %44 ]
  br i1 %50, label %51, label %199

51:                                               ; preds = %49
  %52 = load i64*, i64** %10, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %55 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = mul nsw i64 %53, %56
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i64, i64* %11, align 8
  %64 = load i64*, i64** %10, align 8
  store i64 %63, i64* %64, align 8
  br label %199

65:                                               ; preds = %51
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = load i64*, i64** %10, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %70 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @NBLK_READ, align 4
  %74 = load i32, i32* @NBLK_NOWAIT, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @nfs_buf_get(%struct.TYPE_7__* %66, i64 %68, i64 %71, i32 %72, i32 %75, %struct.nfsbuf** %15)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %199

80:                                               ; preds = %65
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = call i32 @nfs_node_lock_force(%struct.TYPE_7__* %81)
  %83 = load i64*, i64** %10, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = call i32 @nfs_node_unlock(%struct.TYPE_7__* %87)
  %89 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %90 = icmp ne %struct.nfsbuf* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %80
  br label %192

92:                                               ; preds = %80
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @IO_NOCACHE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %92
  %98 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %99 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @NB_CACHE, align 4
  %102 = call i64 @ISSET(i32 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %97
  %105 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %106 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %130, label %109

109:                                              ; preds = %104
  %110 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %111 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @NB_DELWRI, align 4
  %114 = load i32, i32* @NB_NCRDAHEAD, align 4
  %115 = or i32 %113, %114
  %116 = call i64 @ISSET(i32 %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %109
  %119 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %120 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @NB_CACHE, align 4
  %123 = call i32 @CLR(i32 %121, i32 %122)
  %124 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %125 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %124, i32 0, i32 6
  store i64 0, i64* %125, align 8
  %126 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %127 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %126, i32 0, i32 1
  store i32 -1, i32* %127, align 4
  %128 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %129 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %128, i32 0, i32 0
  store i32 -1, i32* %129, align 8
  br label %130

130:                                              ; preds = %118, %109, %104, %97, %92
  %131 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %132 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp sle i64 %133, 0
  br i1 %134, label %135, label %189

135:                                              ; preds = %130
  %136 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %137 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %189, label %140

140:                                              ; preds = %135
  %141 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %142 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @NB_CACHE, align 4
  %145 = load i32, i32* @NB_DELWRI, align 4
  %146 = or i32 %144, %145
  %147 = call i64 @ISSET(i32 %143, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %189, label %149

149:                                              ; preds = %140
  %150 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %151 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @NB_READ, align 4
  %154 = load i32, i32* @NB_ASYNC, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @SET(i32 %152, i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @IO_NOCACHE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %149
  %162 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %163 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @NB_NCRDAHEAD, align 4
  %166 = call i32 @SET(i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %161, %149
  %168 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %169 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @IS_VALID_CRED(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %167
  %174 = load i32, i32* %13, align 4
  %175 = call i64 @IS_VALID_CRED(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @kauth_cred_ref(i32 %178)
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %182 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %177, %173, %167
  %184 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %185 = call i32 @nfs_buf_read(%struct.nfsbuf* %184)
  store i32 %185, i32* %16, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %199

188:                                              ; preds = %183
  br label %192

189:                                              ; preds = %140, %135, %130
  %190 = load %struct.nfsbuf*, %struct.nfsbuf** %15, align 8
  %191 = call i32 @nfs_buf_release(%struct.nfsbuf* %190, i32 1)
  br label %192

192:                                              ; preds = %189, %188, %91
  %193 = load i64, i64* %17, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %17, align 8
  %195 = load i64*, i64** %10, align 8
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, 1
  %198 = load i64*, i64** %10, align 8
  store i64 %197, i64* %198, align 8
  br label %38

199:                                              ; preds = %187, %79, %62, %49
  %200 = load i32, i32* %16, align 4
  store i32 %200, i32* %7, align 4
  br label %201

201:                                              ; preds = %199, %36, %30, %23
  %202 = load i32, i32* %7, align 4
  ret i32 %202
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_7__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_buf_get(%struct.TYPE_7__*, i64, i64, i32, i32, %struct.nfsbuf**) #1

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_7__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_7__*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i64 @IS_VALID_CRED(i32) #1

declare dso_local i32 @kauth_cred_ref(i32) #1

declare dso_local i32 @nfs_buf_read(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_buf_release(%struct.nfsbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
